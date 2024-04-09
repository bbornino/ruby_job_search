Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "job_sites#index"
  get 'intro', to: 'static_pages#intro'
  get 'tips', to: 'static_pages#tips'
  resources :per_site_reports
  resources :per_week_reports
  resources :per_campaign_reports
  resources :job_postings
  
  resources :job_sites do
    resources :job_postings
  end

  
end
