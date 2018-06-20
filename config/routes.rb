Rails.application.routes.draw do
  get 'welcome/index'
  get 'augmentation/:id/edit', to: 'augmentations#editForm'

  resources :augmentations

  get 'augmentation/:id/remove', to: 'augmentations#delete'
  root 'welcome#index'
  
end
