class ChangeTotalAmountToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :objectives, :total_amount, :float
  end
end
