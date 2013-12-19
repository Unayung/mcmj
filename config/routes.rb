# -*- encoding : utf-8 -*-
Mcmj::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root :to => 'pages#welcome'

  resources :videos
end
