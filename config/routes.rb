Cotologue::Application.routes.draw do
  resources :sections, except: :show do
    resources :products
  end
end
