class SharedListsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @list = List.find_by(token: params[:token])
    if @list
      wunderlist_service = ListsFromWunderlistService.new(@list.user)
      wunderlist_list = wunderlist_service.fetch_for_id(@list.list_id)
      @tasks = wunderlist_list.tasks
    else
      render :not_found unless @list
    end
  end
end
