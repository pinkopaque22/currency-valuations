Rails.application.routes.draw do
  root 'currencies#show', id:'BRL'
  resources :currencies, only: :show
end
