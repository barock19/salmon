Salmon::Application.routes.draw do
  resources :pages do
    collection do
      get :search
    end
  end

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
