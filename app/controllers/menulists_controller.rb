class MenulistsController < ApplicationController
  def create
    @menulists = Menulist.new(menulist_params)
  end

  private

    def menulist_params
      params.require(:menulist).permit(:category, :user_id)
    end
end
