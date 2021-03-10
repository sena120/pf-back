class AddCheckedToFooditems < ActiveRecord::Migration[6.1]
  def change
    add_column :fooditems, :checked, :boolean, default: false, null: false
  end
end
