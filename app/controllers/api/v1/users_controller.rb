class Api::V1::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'Signup was successful'
      #redirect_to Something_path
    else
      flash[:error] = 'Cannot signup. Try again!'
    end
    
  end
  

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
  
end
