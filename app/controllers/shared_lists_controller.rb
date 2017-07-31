class SharedListsController < ApplicationController
  def show
    @list = List.find_by(token: params[:token])
    render :not_found unless @list
  end
end
