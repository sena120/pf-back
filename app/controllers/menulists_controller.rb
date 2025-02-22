class MenulistsController < ApplicationController

  def create
    menulist = Menulist.new(menulist_params)
    if menulist.save
      newList = Menulist.includes(:menuitems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:menuitems])}
    else
      render status: 400
    end
  end

  def update
    menulist = Menulist.find(params[:id])
    if menulist.update(category: params[:category])
      newList = Menulist.includes(:menuitems).where(user_id: params[:user_id])
      render json: {data: newList.as_json(:include => [:menuitems])}
      else
        render status: 400
      end
  end

  def destroy
    if Menulist.destroy(params[:id])
      render status: 200
    else
      render status: 400
    end
  end

  private

    def menulist_params
      params.require(:menulist).permit(:category, :user_id)
    end
end
