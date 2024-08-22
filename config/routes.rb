Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "job_sites#index"
  get 'intro', to: 'static_pages#intro'
  get 'tips', to: 'static_pages#tips'
  get 'boolean', to: 'static_pages#boolean'
  get 'reports/per_site', to: 'reports#per_site'
  get 'reports/per_week', to: 'reports#per_week'
  get 'reports/per_campaign', to: 'reports#per_campaign'
  get 'reports/pathrise', to: 'reports#pathrise'

  resources :job_postings
  resources :email_opportunities
  
  resources :job_sites do
    resources :job_postings
  end

  
end
