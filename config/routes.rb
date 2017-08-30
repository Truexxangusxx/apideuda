Rails.application.routes.draw do
  resources :deudas
  resources :users

  post '/users/buscar/', to: 'users#buscar'
  post '/deudas/eliminar/:id', to: 'deudas#eliminar'
  post '/deudas/listar', to: 'deudas#listar'
  post '/users/mail/', to: 'users#mail'
end
