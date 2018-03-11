Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do
    collection do
      get :surprise
    end
  end

  get 'locale', to: 'locales#save_locale', as: :set_locale

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
