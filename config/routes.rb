Cotologue::Application.routes.draw do

  resources :sections, except: :show
end
