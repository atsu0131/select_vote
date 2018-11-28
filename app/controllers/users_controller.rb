class UsersController < ApplicationController
  def index
  end
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: "登録しました"
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to login_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :icon_image, :age, :sex, :pref_id, :zone, :zone_id)
  end

  def require_admin
    redirect_to root_path unless current_user.admin?
  end

end
