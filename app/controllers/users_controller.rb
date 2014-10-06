class UsersController < ApplicationController
  
  def index
    @user = User.all
  end
  
  def find
    @user = User.new
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      
      UserMailer.welcome(@user).deliver
      redirect_to users_path(@user.id)
    else
      render "new"
    end
  end
  
  
end
