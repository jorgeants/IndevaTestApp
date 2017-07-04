Rails.application.routes.draw do

	resources :sellers
	resources :targets
	resources :stores
	devise_for :users, :controllers => { :registrations => "users/registrations" }

	root to: 'application#index'

end
