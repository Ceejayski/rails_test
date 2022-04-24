class TodosController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @todo = @list.todos.new(todo_params)
    @todos = @list.todos
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
    params.require(:todo).permit(:description, :status)
  end
end
