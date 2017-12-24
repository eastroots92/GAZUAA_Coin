Rails.application.routes.draw do
  get 'home/index'
  get 'mycoins/storechecking'
  get 'office' => 'mycoins#yena'
  root 'home#index'

  get 'home/test'
  resources :mycoins
  devise_for :users
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
