LighthouseForum::Application.routes.draw do

	get "users/index"
	resources :movies do
		resources :reviews, only: [:new, :create]
	end
	resources :users, only: [:new, :create]
	resources :sessions, only: [:new, :create, :destroy]
	root to: 'movies#index'

	namespace :admin do
		resources :users, except: [:create, :new]
	end

end
