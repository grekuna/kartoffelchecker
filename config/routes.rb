Rails.application.routes.draw do
  resources :users do
    collection do
      get '/guess', to: 'users#guess', as: 'guess'
      get '/solution', to: 'users#solution', as: 'solution'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
