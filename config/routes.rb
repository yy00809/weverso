Rails.application.routes.draw do
  #Home page is the root
  root 'events#index', as:'home'

  #Resource paths
  resources :events do
    resources :comments
    resources :guests
    patch 'booking', on: :member
  end

  #Contact page
  get 'contact', to:'events#contact'
  post 'request_contact', to:'events#request_contact'
end
