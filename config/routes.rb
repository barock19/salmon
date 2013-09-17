Salmon::Application.routes.draw do
  get "salmon/anatomy"
  get "salmon/scientific"
  get "salmon/habitat"
  get "salmon/information"
  get "salmon/behaviour"
  get "salmon/diet"
  get "salmon/reproduction"
  root :to => 'application#home'
  resources :public_photos
end
