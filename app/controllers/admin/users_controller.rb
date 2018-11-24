class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_user_path, notice: "登録しました"
    else
      render :new
    end
  end

  private

  def user_params
    params.requre(:user).permit(:name, :email, :password, :password_confirmation, :icon_image, :age, :sex, :admin)
  end

end
