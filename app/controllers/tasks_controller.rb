class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def show
    render json: @task
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    head :no_content
  end
  def complete
    @task = Task.find(params[:id])
    if @task.update(complete: true)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def completed
    @completed_tasks = Task.where(completed: true)
    render json: @completed_tasks
  end
  private

  def set_task
    @task = Task.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Tarefa não encontrada" }, status: :not_found
  end

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
