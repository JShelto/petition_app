PetitionApp::Application.routes.draw do
  devise_for :users

  root :to => "petitions#new"

  resources :petitions

end
