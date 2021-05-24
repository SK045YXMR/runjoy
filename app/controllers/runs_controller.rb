class RunsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @runs = Run.includes(:user).order("created_at DESC")
  end

  def new
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    if @run.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @run.comments.includes(:user).order("created_at DESC")
  end

  def edit
  end

  def update
    if @run.update(run_params)
      redirect_to run_path(@run.id)
    else
      render :edit
    end
  end

  def destroy
    if @run.destroy
      redirect_to root_path
    end
  end

  private
  def run_params
    params.require(:run).permit(:title, :content, :image).merge(user_id: current_user.id)
  end

  def set_params
    @run = Run.find(params[:id])
  end
end
