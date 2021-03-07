Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
   }
  get 'temas/top'
  get 'users/search'
  root to: 'teams#top'
  resources :users do
    resources :teams
  end
end
