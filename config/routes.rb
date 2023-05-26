# frozen_string_literal: true

Rails.application.routes.draw do
  root 'albums#index'

  resources :albums, only: %i[index show] do
    resources :photos
  end
end
