Rails.application.routes.draw do
  devise_for :users
  get 'temas/top'
  root to: 'teams#top'
end
