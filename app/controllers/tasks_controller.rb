class TasksController < ApplicationController
  before_action :task_find, only:[:show, :edit, :update, :destroy]


  def index
    @tasks = Task.all
    @today = Date.today
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def show
    @tasks = Task.all
    
  end

  def edit
    @task 
  end

  def update

    if @task.update(task_params)
      redirect_to tasks_path
    else
      render 'edit'
    end
  end

  def destroy

    @task.destroy
    redirect_to tasks_path
  end

    private
    def task_find
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :content, :deadline)
    end
  end
