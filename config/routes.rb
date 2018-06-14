Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'pages#welcome'
  root 'pages#welcome'

  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

  get '/random/:size' => 'pages#random', as: 'random'

  get '/randoms/:size' => 'pages#randoms', as: 'randoms'

  get '/secrets/:magic_word' => 'pages#secrets', as: 'secrets'
end
