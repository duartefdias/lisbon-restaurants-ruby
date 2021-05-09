class RestaurantsController < ApplicationController
    def index

        categories = [
            {"name" => "Italian", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Italian.jpg"},
            {"name" => "Hamburgers", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Hamburguers.jpg"},
            {"name" => "Sushi", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Sushi.jpg"},
            {"name" => "Asian", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Asian.jpg"},
            {"name" => "Indian", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Indian.jpg"},
            {"name" => "Seafood", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Seafood.jpg"},
            {"name" => "Hotdogs", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Hotdogs.jpg"},
            {"name" => "Tapas and Snacks", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Tapas%20and%20Snacks.jpg"},
            {"name" => "Steak", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Steak.webp"},
            {"name" => "Mexican", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Mexican.jpg"},
            {"name" => "Peruvian or Nepalese", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Peruvian%20or%20Nepalese.jpg"},
            {"name" => "Brunch", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/restaurants/179.jpg"},
            {"name" => "Icecream and sweets", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/restaurants/185.webp"},
            {"name" => "Healthy", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Healthy.jpeg"},
            {"name" => "Other", "image_url" => "https://lisbonrestaurantsmedia.blob.core.windows.net/thumbnails/Other.jpg"},
            
        ]

        render locals: {categories: categories}

        #restaurants = Restaurant.all
        #render locals: {restaurants: restaurants}
    end

    def category
        restaurants_by_category = Restaurant.where("category = ?", params[:category])
        render locals: {
            restaurants_by_category: restaurants_by_category,
            current_category: params[:category]
        }
    end

    def random
        if params[:foodPreferences]
            preferencesArray = params[:foodPreferences].split(",")
            randomElement = preferencesArray.sample
            random_restaurants = Restaurant.where(category: randomElement).order("RANDOM()").limit(1)
        else
            random_restaurants = Restaurant.order("RANDOM()").limit(1)
        end
        render locals: {
            random_restaurants: random_restaurants
        }
    end
end