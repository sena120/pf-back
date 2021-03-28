class BuyitemsController < ApplicationController
  before_action :set_buyitem, only: %i[update]

  def create
    buyitem = Buyitem.new(buyitem_params)
    if buyitem.save
      render json: {data: buyitem}
    else
      render status: 400
    end
  end

  def update
    if @buyitem.update(item: params[:item], checked: params[:checked])
      render json: @buyitem
      else
        render status: 400
      end
  end

  def destroy
    if Buyitem.destroy([params[:ids]])
      newList = Buylist.includes(:buyitems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:buyitems])}
    else
      render status: 400
    end
  end

  private

  def set_buyitem
    @buyitem = Buyitem.find(params[:id])
  end

    def buyitem_params
      params.require(:buyitem).permit(:item, :buylist_id)
    end
end
