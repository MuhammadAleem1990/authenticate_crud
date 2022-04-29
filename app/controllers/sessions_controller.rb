class SessionsController < ApplicationController
  def new
  
  end

  def create
    user = User.find_by(params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
     # redirect_to root_path, notice:'Logged in successfully'
     redirect_to students_list_path, notice:'Logged in successfully'
    
    else
      flash.now[:alert]="Invalid Email or Password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    
    redirect_to root_path, notice:'logged out successfully'
  end
end
