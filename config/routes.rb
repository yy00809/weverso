Rails.application.routes.draw do
<<<<<<< HEAD
  root 'events#index', as:'home'

  resources :events do
    resources :comments
  end
=======
  root 'musical_festivals#homepage'
>>>>>>> 1dc74a589cf7b96a03151e8cff6131d215400ee1
end
