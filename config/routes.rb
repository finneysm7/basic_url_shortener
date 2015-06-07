Rails.application.routes.draw do
  resources :urls do
    resources :stats
  end
end
