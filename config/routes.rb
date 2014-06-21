Rails.application.routes.draw do

  resources :contatos

  root :to => 'contatos#index'

end
