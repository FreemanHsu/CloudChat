Rails.application.routes.draw do

  get 'user_has_msg/new/:receiver_id' => "user_has_msg#new", :as => "newmsg"
  post 'user_has_msg/new/:receiver_id' => "message#create"
  get 'user_has_msg/destroy'

  resources :chatrooms
  resources :users, only: [:create]
  resources :room_mems

  get "signup" => "users#signup", :as => "signup"
  get "login" => "users#login", :as => "login"
  post "create_login_session" => "users#create_login_session"
  delete "logout" => "users#logout", :as => "logout"

  get "home" => "users#home", :as => "home"
  get "home/edit" => "users#edit", :as => "user"
  patch "home/edit" => "users#update"

  get "home/recvmsg/:num" => "user_has_msg#recv", :as => "recvmsg"
  get "home/sendmsg/:num" => "user_has_msg#send2", :as => "sendmsg"

  get "users/:id" => "users#show", :as => "showuser"
  post "users/:id" => "users#add_friend", :as => "addfriend"
  get "chatrooms/enter/:id" => "room_mems#enter", :as => "enterroom"
  post "chatrooms/search/:id" => "application#search", :as => "search_id"
  post "chatrooms/search" => "application#search", :as => "search"
 

  get "chatrooms/settags/:id" => "tag#set", :as => "set_tag"
  post "chatrooms/enter/:id" => "tag#afterset", :as => "after_set_tag"

  root 'homepage#index'
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
