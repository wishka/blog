Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get '/' => 'home#index'
  get 'terms' => 'terms'
  get 'about' => 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resource :contacts, only: [:new, :create], path_names: {:new => ''}
resources :articles do
  resources :comments
end

end
