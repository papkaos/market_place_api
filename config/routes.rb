MarketPlaceApi::Application.routes.draw do

  mount SabisuRails::Engine => "/sabisu_rails"
  devise_for :users
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do

      resources :users, :only => [:show, :create, :update, :destroy] do
        resources :products, :only => [:create, :update, :destroy]
        resources :orders, :only => [:index, :show, :create]
      end

      resources :sessions, :only => [:create, :destroy]

      resources :products, :only => [:show, :index]

    end
  end

  # get 'api/v1/some' => 'application#index'

end
