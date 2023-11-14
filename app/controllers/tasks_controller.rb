class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    if @task.completed
      @answer = 'Task Completed!'
    else
      @answer = 'Task Not Completed!'
    end
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
