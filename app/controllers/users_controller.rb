class UsersController < ApplicationController
  before_action :set_active_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @collectibles = Collectible.where(user_id: params[:id])
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :profile_picture)
  end

  def set_active_user
    @user = current_user
  end

end
