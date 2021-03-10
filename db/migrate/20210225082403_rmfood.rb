class Rmfood < ActiveRecord::Migration[6.1]
  def change
    drop_table :foodlists
  end
end
