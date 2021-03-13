class BuylistsController < ApplicationController
  def create
    buylists = Buylist.new(buylist_params)
    if buylists.save
      newList = Buylist.includes(:buyitems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:buyitems])}
    else
      render status: 400
    end
  end

  def update
    buylist = Buylist.find(params[:id])
    if buylist.update(category: params[:category])
      newList = Buylist.includes(:buyitems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:buyitems])}
      else
        render status: 400
      end
  end

  def destroy
    if Buylist.destroy(params[:id])
      newList = Buylist.includes(:buyitems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:buyitems])}
    else
      render status: 400
    end
  end

  private

    def buylist_params
      params.require(:buylist).permit(:category, :user_id)
    end
end
