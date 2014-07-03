RolemWeb::Application.routes.draw do



  # -----------------
  # Root
  # -----------------
  
  scope '(:locale)', :locale => /es|en/ do
    # -----------------
    # Static Pages
    # -----------------

    root to: 'static_pages#index'
    
    match '/compania', to: 'static_pages#compania'
    match '/como_comprar', to: 'static_pages#comprar'
    match '/contacto', to: 'static_pages#contacto'
    match '/por_que_pc', to: 'static_pages#porquepc'
    match '/submit_contact', to: 'static_pages#submit_contact', via: :post, as: 'submit_contact'


    match '/productos', to: 'static_pages#productos'

    match 'productos/Small', to: 'static_pages#Small-Form-Facto'
    match 'productos/Tradicional', to: 'static_pages#Tradicional'

    match '/productos/SmallFormFacto/ZBOX-EN760', to: 'static_pages#ZBOX-EN760'
    match '/productos/SmallFormFacto/Nano-nT-A3800', to: 'static_pages#Nano-nT-A3800'
    match '/productos/SmallFormFacto/raven', to:'static_pages#raven'
    match '/productos/SmallFormFacto/volcanoA', to: 'static_pages#volcanoA'
    match '/productos/SmallFormFacto/volcanoIN', to: 'static_pages#volcanoIN'
    match '/productos/SmallFormFacto/prodigy', to: 'static_pages#prodigy'
    match '/productos/SmallFormFacto/optimus', to: 'static_pages#optimus'
    match '/productos/SmallFormFacto/force', to: 'static_pages#force'
    match '/productos/SmallFormFacto/elemento', to: 'static_pages#elemento'
    match '/productos/SmallFormFacto/elementoM', to: 'static_pages#elementoM'
    match '/productos/SmallFormFacto/NanonTA3800', to: 'static_pages#Nano-nT-A3800'
    match '/productos/SmallFormFacto/ZBOXEN760', to: 'static_pages#ZBOX-EN760'

    match '/productos/Tradicional/ZBOX-EN760', to: 'static_pages#ZBOX-EN760'
    

    match '/privacidad', to: 'static_pages#privacidad'
    match '/terminos_de_uso', to: 'static_pages#terminos_de_uso'
    match '/terminos_y_condiciones', to: 'static_pages#terminos_y_condiciones'
    match '/blog', to: 'blog#index'



    resources :news
    
    resources :sitemaps, :only => :show
    get "sitemap" => "sitemaps#show"

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
  match '*path' => redirect('/')
end
