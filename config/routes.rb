Rails.application.routes.draw do

  devise_for :employer_representatives
  devise_for :freelancers

  resources :freelancers, only: [:index, :show]
  resources :employer_representatives, only: [:index, :show]
  resources :jobs

  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'
  get 'blogs' => 'pages#blogs', as: 'blogs'
  get 'landing' => 'pages#landing', as: 'landing'

  root "pages#landing"

end
