Cotologue::Application.routes.draw do

  resources :products

  resources :sections, except: :show
end
