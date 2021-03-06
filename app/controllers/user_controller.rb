class UserController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
    session[:user_id] = @user_id
    redirect_to root_path, notice:"Your account is successfully created"
    else
    render :new    
    end
  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def new
    @user=User.new
  end

  def index
  end
end
