# -*- encoding : utf-8 -*-
Mcmj::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root :to => 'pages#welcome'
  get "/pages/*id" => 'pages#show', format: false

  resources :videos
  resources :links
  resources :musics
  
  resources :image_creations , :path => "icreations" do
    resources :images
  end
end
