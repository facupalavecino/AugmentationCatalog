Rails.application.routes.draw do
  get 'welcome/index'
  get 'augmentation/:id/edit', to: 'augmentations#editForm'

  resources :augmentations

  get 'augmentation/:id/remove', to: 'augmentations#delete'
  root 'welcome#index'

  #Api definition
  namespace :api, defaults: {format: :json},
  					constraints: {subdomain: 'api'}, path: '/' do
  	#List of resources
  end

  
end
