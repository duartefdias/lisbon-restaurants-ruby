class AddRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image_url
      t.string :category
      t.integer :price_range
    end
  end
end
