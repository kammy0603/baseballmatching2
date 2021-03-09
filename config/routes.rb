Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
   }
  get 'teams/top'
  get 'teams/index'
  get 'teams/search'
  get 'users/search'
  root to: 'teams#top'
  resources :users do
    resources :teams
  end
end
