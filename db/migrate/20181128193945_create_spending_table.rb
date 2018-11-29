class CreateSpendingTable < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.integer :user_id
      t.float :rent
      t.float :food
      t.float :utilities
      t.float :clothes
      t.float :travel
      t.float :other
    end
  end
end
