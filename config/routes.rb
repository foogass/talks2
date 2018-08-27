Rails.application.routes.draw do
  resources :admabouts

  devise_for :users
  get 'admin/index'
  resources :admin

  get 'partners/index'

  get 'about/index'

  get 'contacts/index'

  get 'main/index'

  root 'main#index'

  get '/partners' => 'partners#index'
  get '/about' => 'about#index'
  get '/contacts' => 'contacts#index'
  get '/main' => 'main#index'
  get '/admin' => 'admin#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
