# frozen_string_literal: true

Rails.application.routes.draw do
  root 'albums#index'

  get 'photos/capture', to: 'photos#capture'
  post 'photos', to: 'photos#create'

  resources :albums, shallow: true do
    resources :photos
  end
end
