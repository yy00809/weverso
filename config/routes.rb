Rails.application.routes.draw do

  root 'events#index', as:'home'

  resources :events do
    resources :comments
    resources :guests
    patch 'booking', on: :member
  end

  get 'contact', to:'events#contact'
  post 'request_contact', to:'events#request_contact'
end
