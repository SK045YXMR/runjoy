class RunsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

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

  private
  def run_params
    params.require(:run).permit(:title, :content, :image).merge(user_id: current_user.id)
  end
end
