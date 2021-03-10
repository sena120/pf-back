class UsersController < ApplicationController
  def index
    userId = User.find_by(email: params[:email]).id
    lists = User.includes(foodlists: :fooditems,
                          buylists: :buyitems,
                          menulists: :menuitems).find(userId)
    allFoodItems = User.includes(:foodlists => :fooditems).find(userId)
    render json: {data: lists.as_json(:include => [foodlists: { include: :fooditems},
                                                   buylists: { include: :buyitems},
                                                   menulists: { include: :menuitems}])}
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
