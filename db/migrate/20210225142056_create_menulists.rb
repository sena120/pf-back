class CreateMenulists < ActiveRecord::Migration[6.1]
  def change
    create_table :menulists do |t|
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
