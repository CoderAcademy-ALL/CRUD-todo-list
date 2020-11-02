class TasksController < ApplicationController
  before_action :authenticate_user!


  def index
     @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
      @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to @task
  end

  private
  def task_params
      params.require(:task).permit(:title, :description, :category, :priority)
  end

end
