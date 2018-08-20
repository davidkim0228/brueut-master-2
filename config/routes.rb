Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'aboutus', to: 'pages#aboutus'
  get 'aboutucla', to: 'pages#aboutucla'
  get 'aboutgroup', to: 'pages#aboutgroup'

  post '/freeposts/create' => 'freeposts#create'


  resources :recruits do
    resources :recruit_comments
  end
  resources :jobposts do
    resources :job_comments
  end
  resources :markets do
    resources :market_comments
  end
  resources :graduates do
    resources :grad_comments
  end
  resources :bamboos do
    resources :bamboo_comments
  end
  resources :freeposts do
    resources :free_comments
  end
  resources :sponsorposts do
    resources :sponsor_comments
  end

  get 'aboutus/*missing', to: 'pages#aboutus'
  get 'aboutucla/*missing', to: 'pages#aboutucla'
  get 'aboutgroup/*missing', to: 'pages#aboutgroup'

  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: redirect('/')

  root to: 'pages#home'
end
