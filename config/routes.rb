Salmon::Application.routes.draw do
  resources :pages do
    collection do
      get :search
    end
  end

  root :to => 'application#home'
  resources :public_photos
end
