class FoodlistsController < ApplicationController
  
  def create
    foodlists = Foodlist.new(foodlist_params)
    if foodlists.save
      newList = Foodlist.includes(:fooditems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:fooditems])}
    else
      render status: 400
    end
  end

  def update
    foodlist = Foodlist.find(params[:id])
    if foodlist.update(category: params[:category])
      newList = Foodlist.includes(:fooditems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:fooditems])}
      else
        render status: 400
      end
  end

  def destroy
    if Foodlist.destroy(params[:id])
      newList = Foodlist.includes(:fooditems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:fooditems])}
    else
      render status: 400
    end
  end

  private

    def foodlist_params
      params.require(:foodlist).permit(:category, :user_id)
    end
end
