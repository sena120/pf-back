class AddFoodsToMenuitems < ActiveRecord::Migration[6.1]
  def change
    add_column :menuitems, :foods, :text, array: true, null: false
  end
end
