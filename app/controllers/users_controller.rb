class UsersController < ApplicationController
  def index
    @user = User.find_by(email: params[:email])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      
    else
      
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end

end
