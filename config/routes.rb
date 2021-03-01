require 'sidekiq/web'
Sidekiq::Web::use(Rack::Auth::Basic) do |user, password|
  [user, password] == ['huei','12345678']
end

Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos, only: [:index, :show] do
    member do
      get :like
    end
  end

  resources :messages, only: [:new, :create]
  root "photos#index"

  namespace :admin do
    resources :photos
    resources :spphotos, except: [:index]
    root "photos#index"
  end

  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end

end
