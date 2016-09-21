Rails.application.routes.draw do

  root 'groups#index'

  resources :groups do
    resources :members
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
