class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @add_task = Task.new(params[:task])
    @add_task.save
    redirect_to tasks_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail)
  end
end
