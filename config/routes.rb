Rails.application.routes.draw do
  root 'fileuploads#new'
  post 'fileuploads/new', to: 'fileuploads#new'
  resources :fileuploads, only: [:index, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
