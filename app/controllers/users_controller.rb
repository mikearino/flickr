class UsersController < ApplicationController

  def show
    @user = current_user
    render 'users/show'
  end

  def update
    @pic = current_user.pics.new
    @pic.image.attach(params[:user][:pics][:image])
    current_user.save
    redirect_to user_path(current_user)
  end

  def edit
    @user = current_user
    render :edit
  end

  private
   def user_params
     params.require(:user).permit(:image)
   end
end
