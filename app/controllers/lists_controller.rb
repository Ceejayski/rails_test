class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new

  end

  def create
    @list = List.new(list_params)
    @lists = List.all
    if @list.save
      redirect_to list_path(@list)
    else
      render :index
    end
  end
  
  def show
    @todos = @list.todos
    @todo = Todo.new
  end

  def destroy
    @list.destroy
    redirect_to root_path
  end

  private
  before_action :set_list, only: [:show, :destroy]


  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
