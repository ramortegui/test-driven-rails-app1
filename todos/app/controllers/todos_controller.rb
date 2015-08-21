class TodosController < ApplicationController
  before_filter :authenticate
  def index
    @todos = Todo.all
  end
  def new
    @todo = Todo.new
  end
  def create
    Todo.create(todo_params)
    #@todo = Todo.new({ :title => params[:title]})
    #@todo.save
    redirect_to todos_path 
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
