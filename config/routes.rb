MarketPlaceApi::Application.routes.draw do

  devise_for :users
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do

    end
  end

  get 'api/v1/some' => 'application#index'

end
