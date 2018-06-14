Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'pages#welcome'
  get '/' => 'pages#welcome'

  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

  get '/random/:size' => 'pages#random'

  get '/randoms/:size' => 'pages#randoms'

  get '/secrets/:magic_word' => 'pages#secrets'
end
