class FooditemsController < ApplicationController
  before_action :set_fooditem, only: %i[update]

  def create
    fooditem = Fooditem.new(fooditem_params)
    if fooditem.save
      newList = Foodlist.includes(:fooditems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:fooditems])}
    else
      render status: 400
    end
  end

  def update
    if @fooditem.update(item: params[:item], checked: params[:checked])
      render json: @fooditem
      else
        render status: 400
      end
  end

  def destroy
    if Fooditem.destroy([params[:ids]])
      newList = Foodlist.includes(:fooditems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:fooditems])}
    else
      render status: 400
    end
  end

  private

  def set_fooditem
    @fooditem = Fooditem.find(params[:id])
  end

    def fooditem_params
      params.require(:fooditem).permit(:item, :foodlist_id)
    end
end
