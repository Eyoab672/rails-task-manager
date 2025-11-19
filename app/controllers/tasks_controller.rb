class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    tasks = Task.new
  end


  def create
     tasks = Task.new(tasks_params)
    if tasks.save
      redirect_to tasks_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
