class ListsController < ApplicationController
  def create
    user = List.new(list_params)
    redirect_to :back
  end

  private
    def list_params
      params.require(:list).permit(:title, :description)
    end
end
