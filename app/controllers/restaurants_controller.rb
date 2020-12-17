class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render locals: {restaurants: restaurants}
    end

    def category
        restaurants_by_category = Restaurant.where("category = ?", params[:category])
        render locals: {restaurants_by_category: restaurants_by_category}
    end
end