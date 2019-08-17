Rails.application.routes.draw do
  devise_for :barbermasters
  get 'barbermasters/sign_in' => 'admins#show'
  # devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "barbers#index"
  resource :barbers
  # resource :admin
  resource :admins
  get 'about' => 'admins#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
