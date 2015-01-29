Rails.application.routes.draw do

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/update'

  get 'users/create'

  get 'users/destroy'

  get 'users/edit'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'relationships/create'

  get 'relationships/destroy'

  get 'password_resets/create'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'password_resets/update'

  get 'entries/create'

  get 'entries/edit'

  get 'entries/update'

  get 'entries/new'

  get 'entries/destroy'

  get 'entries/index'

  get 'entries/show'

  get 'comments/create'

  get 'comments/new'

  get 'comments/destroy'

  get 'comments/index'

  get 'account_activations/edit'

   root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'home'    => 'static_pages#home_after_login'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  #get 'show' => 'users#show'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
    resources :users do
    member do
      get :following, :followers
    end
  end

    resources :account_activations, only: [:edit]
    resources :password_resets, only: [:new, :create, :edit, :update]
    resources :entries
    resources :comments
    resources :relationships,       only: [:create, :destroy]





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
