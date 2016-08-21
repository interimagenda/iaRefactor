Rails.application.routes.draw do

  devise_for :employer_representatives
  devise_for :freelancers

  resources :freelancers, only: [:index, :show]
  resources :employer_representatives, only: [:index, :show]
  resources :freelancer_view_jobs, only: [:index, :show]
  # resources :employer_representative_view_jobs

  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'
  get 'blogs' => 'pages#blogs', as: 'blogs'
  get 'landing' => 'pages#landing', as: 'landing'

  get 'jobs' => 'freelancer_view_jobs#index', as: :jobs
  get 'jobs/:id' => 'freelancer_view_jobs#show', as: :job

  get 'my_jobs' => 'employer_representative_view_jobs#index', as: :my_jobs
  get 'my_jobs/new' => 'employer_representative_view_jobs#new', as: :new_job
  post 'my_jobs' => 'employer_representative_view_jobs#create'
  patch 'my_jobs/:id' => 'employer_representative_view_jobs#update'
  get 'my_jobs/:id/edit' => 'employer_representative_view_jobs#edit', as: :edit_job
  delete 'my_jobs/:id' => 'employer_representative_view_jobs#destroy'
  get 'my_jobs/:id' => 'employer_representative_view_jobs#show', as: :selected_job

  root "pages#landing"

end
