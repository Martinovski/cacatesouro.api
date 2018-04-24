Rails.application.routes.draw do
  resources :jogos
  resources :pistas
  resources :pessoas
  get 'hello/index'
  get 'hello/usuario'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
