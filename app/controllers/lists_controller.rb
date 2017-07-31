class ListsController < ApplicationController
  before_action :wunderlist_lists, only: [:index, :create]
  def index
    @lists = current_user.lists
    @lists_wunderlist = @wunderlist.fetch
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    list_details = @wunderlist.fetch_for_id(@list.list_id)
    @list.title = list_details.title
    @list.user = current_user
    if @list.save
      redirect_to lists_path
    else
      @lists = current_user.lists
      @lists_wunderlist = @wunderlist.fetch
      render :index
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:list).permit(:list_id)
  end

  def wunderlist_lists
    @wunderlist = ListsFromWunderlistService.new(current_user)
  end
end
