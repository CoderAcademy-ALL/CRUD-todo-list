class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_link, only:[:destroy, :edit, :update, :show]

  def index
     @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def destroy
    @task.destroy
   
    redirect_to tasks_path
  end

  def edit
  end

  def update

    if @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  private
  def task_params
      params.require(:task).permit(:title, :description, :category, :priority, :complete)
  end

  def set_link
    @task = Task.find(params[:id])
  end

end
