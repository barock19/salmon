Salmon::Application.routes.draw do
  get "company/contact"
  post "company/send_contact"
  resources :pages do
    collection do
      get :search
    end
  end

  root :to => 'application#home'
  resources :public_photos
end
