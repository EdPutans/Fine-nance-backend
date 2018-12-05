class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.float :rent, :default => 0
      t.float :food, :default => 0
      t.float :travel, :default => 0
      t.float :other, :default => 0
      t.float :clothes, :default => 0
      t.float :utilities, :default => 0
      t.timestamps
    end
  end
end
