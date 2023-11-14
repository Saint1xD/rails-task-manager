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

end
