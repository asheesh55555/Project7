Rails.application.routes.draw do
  resources :posts 
  
  
  resources :articles
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
get "/abc/xyz" => 'posts#profile_detail'
devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
