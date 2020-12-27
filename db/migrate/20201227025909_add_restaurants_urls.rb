class AddRestaurantsUrls < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :zomato_url, :string
    add_column :restaurants, :google_maps_url, :string
  end
end
