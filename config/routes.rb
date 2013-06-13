RolemWeb::Application.routes.draw do

  # -----------------
  # Root
  # -----------------
  root to: 'static_pages#index'

  scope '(:locale)', :locale => /es|en/ do
    # -----------------
    # Static Pages
    # -----------------
    match '/productos', to: 'static_pages#productos'
    match '/compania', to: 'static_pages#compania'
    match '/comprar', to: 'static_pages#comprar'
    match '/contacto', to: 'static_pages#contacto'
    match '/noticias', to: 'static_pages#noticias'
    match '/submit_contact', to: 'static_pages#submit_contact', via: :post, as: 'submit_contact'

    match '/productos/volcano', to: 'static_pages#volcano'
    match '/productos/prodigy', to: 'static_pages#prodigy'
    match '/productos/optimus', to: 'static_pages#optimus'
    match '/productos/force', to: 'static_pages#force'
    match '/productos/elemento', to: 'static_pages#elemento'

    # -----------------
    # Controllers
    # -----------------

    # User's controller
    resources :users, only: [:new, :create, :edit, :update, :show]
    match '/users/:id/receipts', to: 'users#receipts', as: 'user_receipts'

    # receipts' controller
    resources :receipts, only: [:new, :create, :destroy]

    # Session's controller
    match '/login', to: 'sessions#create', as: 'login', via: :post
    match '/signout', to: 'sessions#destroy', as: 'signout', via: :delete
  end

  # -----------------
  # Active Admin
  # -----------------
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
