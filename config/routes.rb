Rails.application.routes.draw do
  
  root 'tests#index'

  resources :tests do
    resources :questions, shallow: true do
      resources :answers, shallow: true, exept: :index
    end
  end

  resource :test_passeges, only: %i[show update] do
    member do 
      get :result
    end
  end
end
