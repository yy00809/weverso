Rails.application.routes.draw do

  root 'events#index', as:'home'

  resources :events do
    resources :comments
    patch 'booking', on: :member
  end

end
