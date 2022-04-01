class Api::V1::SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
    else
      flash.now[:danger] = "Username / or password incorrect!"
    end
    
  end
  
  def destroy
    
  end
  
end
