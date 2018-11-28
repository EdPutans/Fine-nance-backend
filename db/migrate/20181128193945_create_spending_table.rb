class CreateSpendingTable < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.integer :rent
      t.integer :food
      t.integer :utilities
      t.integer :clothes
      t.integer :travel
      t.integer :other
    end
  end
end
