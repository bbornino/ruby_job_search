Rails.application.routes.draw do
  #get 'job_sites/index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "job_sites#index"
  resources :job_sites
end
