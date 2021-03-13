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
    user = User.new(user_params)
      if user.save
        newMenu = Menulist.create(category: 'Mylist', user_id: user.id)
        newFood = Foodlist.create(category: 'Mylist', user_id: user.id)
        newBuy = Buylist.create(category: 'Mylist', user_id: user.id)
        if newMenu.save and newFood.save and newBuy.save
          render status: 200
        else
          render status: 400
        end
      else
        render status: 400
      end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end

end
