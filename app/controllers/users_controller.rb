class UsersController < ApplicationController
  
  def new
    @new_user = User.new
  end

  def create
    new_user = User.create(user_params)
    redirect_to user_path(new_user)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :username)
  end
end
