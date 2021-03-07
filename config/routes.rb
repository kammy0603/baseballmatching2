Rails.application.routes.draw do
  get 'temas/top'
  root to: 'teams#top'
end
