EtCms::Engine.routes.draw do
  root to: "pages#home", :via => :get
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users, {
      class_name: 'EtCms::User',
      module: :devise,
  }

  get '/pages/home'
  get '/pages/:id', :to => 'pages#show', :as => :page

  namespace :admin do
    root to: "pages#index"
    resources :pages
  end

  resources :pages
  resources :pages, :path => ''
end
