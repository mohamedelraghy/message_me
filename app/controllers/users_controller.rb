class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to Chat-me App #{@user.username}"
      redirect_to root_path
    else
      render 'new'
    end 
  end

  private
  def user_params
    params.require(:@user).permit(:username, :password)
  end

end
