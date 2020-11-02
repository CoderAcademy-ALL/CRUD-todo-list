class TasksController < ApplicationController

    before_action :authenticate_user!


    def index
        @tasks = Task.all
    end

    def new
    end

    def show
        @task = Task.find(params[:id])
    end


end
