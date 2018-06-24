Rails.application.routes.draw do

	namespace :api do
		scope module: :v1 do
			resources :augmentations, only: [:index, :show, :create]
		end
	end

  get 'welcome/index'
  get 'augmentation/:id/edit', to: 'augmentations#editForm'

  resources :augmentations

  get 'augmentation/:id/remove', to: 'augmentations#delete'
  root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
