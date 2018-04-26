class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # redirect_to ''
      flash[:success] = "Successful signup!"
      redirect_to users_path(id: @user.id)
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :mobile, :password,
                                   :password_confirmation)
    end
end
