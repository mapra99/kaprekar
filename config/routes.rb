Rails.application.routes.draw do
  root to: "kapregard_processes#index"

  resources :kapregard_processes, only: :index
  resources :seeds, only: :create
end
