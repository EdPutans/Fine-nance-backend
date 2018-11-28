class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.integer :user_id
      t.string :name
      t.float :current_amount
      t.integer :total_amount

      t.timestamps
    end
  end
end
