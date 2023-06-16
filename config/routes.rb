Rails.application.routes.draw do
  root 'stores#index'

  get 'search', to: 'pets#search'
  # get '/store/order', to: 'stores#new'

  resources :pets
  resources :stores, path: 'store' do
    get 'order', to: 'stores#new', on: :collection
    post 'order', to: 'stores#create', on: :collection
  end
end
