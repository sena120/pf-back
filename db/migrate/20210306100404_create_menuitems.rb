class CreateMenuitems < ActiveRecord::Migration[6.1]
  def change
    create_table :menuitems do |t|
      t.string :item
      t.boolean :checked, default: false, null: false
      t.references :menulist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
