Cotologue::Application.routes.draw do
  resources :filters, except: :show do
    resources :values
  end

  resources :sections, except: :show do
    resources :products
  end
end
