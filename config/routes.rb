Rails.application.routes.draw do
  #root to: 'urls#index'
  resources :urls do
    resources :stats
  end
end
