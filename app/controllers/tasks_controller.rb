class TasksController < ApplicationController
skip_before_filter :verify_authenticity_token

def index
  @tasks = Task.all 
end 

def new
  @task = Task.new
end 

def show
  @task =Task.find(params[:id])
end 


def edit 
  @task =Task.find(params[:id])
end

def create
  Task.create(task_params) 
  redirect_to root_path 
end 

def update
  @task = Task.find(params[:id])
  @task.update_attributes(task_params)
end 

def destroy
  @task = Task.find(params[:id])
  @task.destroy
  flash[:alert] = "Task deleted"
end

private

  def task_params
    params.require(:task).permit(:name, :datetime, :date, :notes)
  end

end

