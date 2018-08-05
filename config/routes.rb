Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos, only: [:index, :show]
  root "photos#index"

  namespace :admin do
    resources :photos
    resources :spphotos
    root "photos#index"
  end

end
