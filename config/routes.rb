Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bloggers, only: [:new, :create, :show]
  resources :destinations, only: [:show]
  resources :posts, only: [:index, :new, :show, :create, :edit, :update]
  
  post "/posts/:id/like", to: "posts#add_like", as: "like"
end


