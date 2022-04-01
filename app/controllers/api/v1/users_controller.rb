class Api::V1::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
      flash[:success] = 'Signup was successful'
    else
      flash[:danger] = 'Cannot signup. Try again!'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
