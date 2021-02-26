Rails.application.routes.draw do
  namespace :admin do
    resources :sales
  end
  namespace :admin do
    resources :customers
  end
  namespace :admin do
    resources :products
  end
  #devise_for :users, class_name: "Admin::User"
  #devise_for :users, ActiveAdmin::Devise.config
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  	devise_for :admin, :controllers => { registrations:  'admin/registrations',
                                        sessions:       'admin/sessions',
                                        passwords:      'admin/passwords',
                                        confirmations:  'admin/confirmations'
  	},
  	class_name: "Admin::User"
  	root 'posts#index'

  	get 'about' => 'pages#about'

  	namespace :admin do
	  controller :admin do
	    get '/', action: :index
	    get :sign_in
	    get :logout
	  end
	  resources :dashboard
    resources :product
  
	end
end
