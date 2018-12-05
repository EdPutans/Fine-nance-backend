class AddImgUrlToObjectives < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives, :img_url, :string
  end
end
