Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools do
    resources :bookings, only: [:index, :show, :create]
  end

  resources :bookings, only: :destroy

  get :my_bookings, to: "bookings#my_bookings"
  get :my_tools, to: "tools#my_tools"
end
