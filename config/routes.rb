Rails.application.routes.draw do

  resources :news_items
  root to: "players#index"

  resources :players
  
  resources :weekly_scores

  resources :news_items
  
end
