class UsersController < ApplicationController
  def show
  end


  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to books_path
    else
      render user_path
    end
  end



  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
