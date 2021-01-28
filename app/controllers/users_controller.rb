class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @new_user = User.new
  end

  def create
    new_user = User.create(user_params)
    if new_user.valid?
      redirect_to user_path(new_user)
    else
      flash[:messages] = new_user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :username)
  end
end
