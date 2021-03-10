class BuylistsController < ApplicationController
  def index
    buylists = Buylist.where(user_id: params[:user_id])
    render json: buylists
  end

  def create
    @buylist = Buylist.new(buylist_params)
  end

  private

    def buylist_params
      params.require(:buylist).permit(:category, :user_id)
    end
end
