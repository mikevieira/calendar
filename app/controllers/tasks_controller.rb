class TasksController < ApplicationController


def index
  @tasks = Task.all 
end 

def new
  @task = Task.new
end 

def show
  @task =Task.find(params[:id])
end 

def create
  Task.create(task_params) 
  redirect_to root_path 
end 

def update
  @task = task.find(params[:id])
  @task.update_attributes(task_params)
end 

private

  def task_params
    params.require(:task).permit(:name, :datetime, :date, :notes)
  end

end

