Rails.application.routes.draw do
  jsonapi_resources :gears
  jsonapi_resources :blogposts
  jsonapi_resources :quests
  jsonapi_resources :notes
  # resources :notes, only: [:index, :create]
end
