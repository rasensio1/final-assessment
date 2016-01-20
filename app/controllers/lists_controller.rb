class ListsController < ApplicationController
  def create
    List.create(list_params)
    redirect_to :back
  end

  def destroy
    List.delete(params["id"])
    redirect_to :back
  end

  private
    def list_params
      params.require(:list).permit(:title, :description, :user_id)
    end
end
