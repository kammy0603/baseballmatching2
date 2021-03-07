Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
   }
  get 'temas/top'
  root to: 'teams#top'
  resources :users do
    resources :teams
  end
end
