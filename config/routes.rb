Rails.application.routes.draw do

  get "/etablissements", to: "etablissements#index"


  devise_for :benevoles, controllers: {
    sessions:           "benevoles/sessions",
    passwords:          "benevoles/passwords",
    registrations:      "benevoles/registrations",
    confirmations:      "benevoles/confirmations",
    omniauth_callbacks: "benevoles/omniauth_callbacks"
  }

  devise_for :etablissements, controllers: {
    sessions:           "etablissements/sessions",
    passwords:          "etablissements/passwords",
    registrations:      "etablissements/registrations",
    confirmations:      "etablissements/confirmations",
  }

  resources :missions do 
    resources :comments, except: [:index], controller: 'missions/comments'
  end

  resources :benevoles do
    resources :profils, controller: 'benevoles/profils'
  end

  resources :etablissements do
  resources :etprofils, controller: 'etablissements/etprofils'
  end


  resources :etablissements do
    get :autocomplete_city_dept_name, :on => :collection
  end




  # resources :etablissements do
  #   resources :missions
  # end

  # resources :benevoles do
  #   resources :missions
  # end

  # resources :missions do
  #   resources :etablissements
  # end

  # resources :missions do
  #   resources :benevoles
  # end

  # resources :comments do
  #   resources :missions
  # end

  root 'home#index'
end
