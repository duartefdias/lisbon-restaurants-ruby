class OptimizeImageLinking < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :azure_id, :string
    remove_column :restaurants, :image_url, :string
  end
end
