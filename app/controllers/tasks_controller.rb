class TasksController < ApplicationController
  def index
    @task = Task.new
  end

  def show
  end

  def create 
    tesk = Task.new(task_params)
    task.save!
    redirect_to tasks_url, notice: "タスク「#{task.name}」を登録しました。"
  end

  def new
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
