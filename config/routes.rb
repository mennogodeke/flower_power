Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'registrations'
  }

  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"

  resources :products

  resources :orders do
    resources :order_items
  end
end
