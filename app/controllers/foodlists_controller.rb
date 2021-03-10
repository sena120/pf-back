class FoodlistsController < ApplicationController
  def index
    foodlists = Foodlist.where(user_id: params[:user_id])
    render json: foodlists
  end
  
  def create
    foodlists = Foodlist.new(foodlist_params)
  end

  private

    def foodlist_params
      params.require(:foodlist).permit(:category, :user_id)
    end
end
