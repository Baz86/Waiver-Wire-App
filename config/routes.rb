Rails.application.routes.draw do

  root to: "players#index"

  resources :players
  
  resources :weekly_scores
  
end
