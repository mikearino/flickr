class PicsController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @pic = @user.pics.new
    render :new
  end

  def show
    @user = User.find(current_user.id)
    @pic = Pic.find(params[:id])
    render :show
  end

  def destroy
    @user = User.find(current_user.id)
    @pic = Pic.find(params[:id])
    @pic.delete
    redirect_to user_path(@user)
  end
end
