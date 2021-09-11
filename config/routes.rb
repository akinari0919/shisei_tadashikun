Rails.application.routes.draw do
  get 'webhook/kokodayo'

  root 'application#hello'
  post '/callback' => 'linebot#callback'
end
