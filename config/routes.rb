Rails.application.routes.draw do
  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :hello
  get 'users/show', to: "user#show"
  post 'users/name', to: "user#name"
  post 'users/selfIntroduction', to: "user#self_introduction"
end
