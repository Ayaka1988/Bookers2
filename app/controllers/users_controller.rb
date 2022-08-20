class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
    # @books = @user.books
    # page(params[:page])
  end

  def edit
  end
  
  def index
  end
  
  

  private
  
  # def redirect_root
  # redirect_to root_path unless user_signed_in?
  # end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end