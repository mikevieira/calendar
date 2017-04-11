class TasksController < ApplicationController
skip_before_filter :verify_authenticity_token


def index
  @tasks = Task.all 
   @some_instance_vairable = Task.new
end 

def new
  @task = Task.new
end 

def show
  @task =Task.find(params[:id])
end 


def edit 
  @task =Task.find(params[:id])
   respond_to do |format|
    format.html
    format.js
  end
end

def create
  Task.create(task_params) 
  redirect_to root_path 
end 

def update
  @task = Task.find(params[:id])
  @task.update_attributes(task_params)
  redirect_to root_path
end 

def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to root_path 
  flash[:alert] = "Task deleted"
end

private

  def set_up_instance_variable
     @some_instance_vairable = Task.new
  end

  def task_params
    params.require(:task).permit(:name, :datetime, :date, :notes, :time, :starttime)
  end

end

