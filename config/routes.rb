Rails.application.routes.draw do

  root 'groups#index'

  resources :groups do
    resources :members do
      resources :goals
    end
  end
    
  get '/members/new', to: 'members#new'
  # post '/members/create', to: 'members#create'

  # get '/members/create', to: 'members'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
