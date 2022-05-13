class ListsController < ApplicationController
  #   lists GET    /lists(.:format)           lists#index
  def index
    @lists = List.all
    @movies = Movie.all
  end

  def show
    #     list GET    /lists/:id(.:format)       lists#show
    @list = List.find(params[:id])
  end

  def new
    # new_list GET    /lists/new(.:format)       lists#new
    @list = List.new
  end

  def create
    #         POST   /lists(.:format)           lists#create
    @list = List.new(list_params)
    @list.save

    redirect_to list_url(@list)
  end
  # edit_list GET    /lists/:id/edit(.:format)  lists#edit
  #         PATCH  /lists/:id(.:format)       lists#update
  #         PUT    /lists/:id(.:format)       lists#update
  #         DELETE /lists/:id(.:format)       lists#destroy

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
