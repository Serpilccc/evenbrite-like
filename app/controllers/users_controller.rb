class UsersController < ApplicationController
  def index
  end
  def new
        @user=User.new
  end

  def show
        @user = User.find(params[:id])
  end

  def create
    session[:current_user_id] = @user.id
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
        render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
end
end
