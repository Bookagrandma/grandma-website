Rails.application.routes.draw do
<<<<<<< HEAD


  devise_for :benevoles


root 'home#index'
=======

  devise_for :etablissements
  devise_for :benevoles
  resources :missions
  resources :etablissements
  resources :benevoles
  resources :comments
  # devise_for :benevoles
  # devise_for :etablissements

  resources :etablissements do
    resources :missions
  end

  resources :benevoles do
    resources :missions
  end

  resources :missions do
    resources :etablissements
  end

  resources :missions do
    resources :benevoles
  end
>>>>>>> 1d81acc70b1f93c2732c586cb2d49693f8116d82

  resources :comments do
    resources :missions
  end

  root 'home#index'

end
