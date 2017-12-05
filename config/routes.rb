Rails.application.routes.draw do
 
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

resources :comments do
	resources :missions
end

root 'home#index'



end

