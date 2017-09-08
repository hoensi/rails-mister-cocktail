Rails.application.routes.draw do
    Rails.application.routes.draw do
 resources :cocktails, only: [:show, :index, :new, :create] do
  resources :doses, only: [:create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
    resources :doses, only: [:destroy]
  root "cocktails#index"
  end
end
