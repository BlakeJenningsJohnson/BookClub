class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id "Get reading!"
    else
      render :new, notice: "There was a problem saving this user!"
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    # @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
