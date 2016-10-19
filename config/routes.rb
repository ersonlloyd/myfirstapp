Rails.application.routes.draw do
  resources :microposts
  resources :users

 	#root 'homepage#hello'
 	root 'users#index'


end
