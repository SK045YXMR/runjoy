class UsersController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:edit, :upadate]
  before_action :move_to_index, only: [:edit, :update]

  def show
    @runs = @user.runs
  end

  def edit
  end

  def update
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end


  private
  def user_params
    params.require(:user).permit(:nickname, :profile, :email, :password, :password_confirmation)
  end

  def set_params
    @user = User.find(params[:id])
  end

  def move_to_index
    if current_user.id != @user.id
      redirect_to root_path
    end
  end
end
