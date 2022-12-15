Rails.application.routes.draw do
  get '/carousel', to: 'carousel#index'

  get '/stocks/:alias', to: 'stock#show', as: 'stock_show'

  get '/stocks', to: 'stock#index', as: 'stocks'
end
