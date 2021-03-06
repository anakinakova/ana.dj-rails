Rails.application.routes.draw do
  resources :posts, only: [:index, :show]

  get '/:id', to: 'pages#show', as: 'page'

  get '/', to: 'posts#index'
end
