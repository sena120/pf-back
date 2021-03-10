class CreateBuyitems < ActiveRecord::Migration[6.1]
  def change
    create_table :buyitems do |t|
      t.string :item
      t.references :buylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
