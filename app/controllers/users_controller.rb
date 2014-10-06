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
  
  def edit
    @user = USer.find(params[:id])
    if @user != current_user
      redirect_to users_path, alert: "Users cannot edit other users information."
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path, "Users cannot edit other users information."
    else
      if @user.update_attributes(params[:user])
        redirect_to users_path(@user.id), notice: "You have updated your user information."
      else
        render "edit", alert: "Invalid entry, please try again."
      end
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id])
    
    if @user != current_user
      redirect_to users_path, alert: "Users cannot edit other users information."
    else
      @user.delete
      redirect_to users_path, notice: "User has been successfully deleted."
    end
  end
end
