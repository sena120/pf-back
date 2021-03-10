class AddCheckedToBuyitems < ActiveRecord::Migration[6.1]
  def change
    add_column :buyitems, :checked, :boolean, default: false, null: false
  end
end
