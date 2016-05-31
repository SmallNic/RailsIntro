class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path, notice: "Your task has successfully been created"
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to tasks_path, notice: "Your task has successfully been updated"
    else
      redirect_to :back, notice: "There was an error updating your task"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "Your task has successfully been deleted"
  end

  private

  def task_params
    params.require(:task).permit(:task)
  end
end
