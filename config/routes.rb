Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Route to select search category (restaurant type)
  get '/', to: 'restaurants#index'

  # Give random restaurant
  get '/random', to: 'restaurants#random'

  # Display list of restaurants based on :category
  get '/:category', to: 'restaurants#category'

end
