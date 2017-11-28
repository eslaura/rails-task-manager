class TasksController < ApplicationController

before_action :set_task, only: [:show, :edit, :update, :destroy]

def index
  @tasks = Task.all
end

def show
  #done
end

def new
  @task = Task.new
end

def create
  @task = Task.new(task_params)
  @task.save
  redirect_to tasks_path
end

def edit
  #done
end

def update
  #done
  @task.update(task_params)
  @task.save
  redirect_to tasks_path
end

def destroy
  #done
  @task.destroy
  redirect_to tasks_path
end

private

def task_params
    params.require(:task).permit(:name, :description, :user)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
