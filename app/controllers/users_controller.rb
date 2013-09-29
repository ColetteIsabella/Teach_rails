class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Rails FAQs!"
      sign_in @user
      redirect_to root_url
    else
      flash[:notice] = "Your profile can't be created, you do not have the credentials."
      render "new"
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end
end
