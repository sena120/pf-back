class MenuitemsController < ApplicationController
  before_action :set_menuitem, only: %i[update]

  def create
    menuitem = Menuitem.new(menuitem_params)
    if menuitem.save
      render json: {data: menuitem}
    else
      render status: 400
    end
  end

  def update
    if @menuitem.update(item: params[:item], foods: params[:foods] ,checked: params[:checked])
      render json: @menuitem
      else
        render status: 400
      end
  end

  def destroy
    if Menuitem.destroy([params[:ids]])
      newList = Menulist.includes(:menuitems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:menuitems])}
    else
      render status: 400
    end
  end

  private

  def set_menuitem
    @menuitem = Menuitem.find(params[:id])
  end

    def menuitem_params
      params.require(:menuitem).permit(:item, :checked, :menulist_id, foods:[])
    end
end
