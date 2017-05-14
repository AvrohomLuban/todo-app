class TodosController < ApplicationController

  def index
    @todos = Todo.all
    render "index.html.erb"
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @todo = Todo.create(title: params[:title], note: params[:note], date: params[:date])
    render "create.html.erb"
  end

  def edit
    @todo = Todo.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.update(title: params[:title], note: params[:note], date: params[:date])
    render "update.html.erb"
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.delete
    render "destroy.html.erb"
  end

end
