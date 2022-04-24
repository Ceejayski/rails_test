class TodosController < ApplicationController
  def create
    @list = List.find params[:list_id]
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to list_path(@list)
    else
      render '/lists/show'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
  end
  
  private
  def todo_params
    params["todo"]["list_id"] = params[:list_id]
    params.require(:todo).permit(:description, :status, :list_id)
  end
end
