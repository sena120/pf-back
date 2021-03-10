class CreateFooditems < ActiveRecord::Migration[6.1]
  def change
    create_table :fooditems do |t|
      t.string :item
      t.references :foodlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
