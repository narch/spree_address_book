Spree::Core::Engine.add_routes do
  resources :addresses do
    member do
      get :default
    end
  end

  if Rails.env.test?
    put '/cart', :to => 'orders#update', :as => :put_cart
  end
end
