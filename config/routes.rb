EtCms::Engine.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users, {
      class_name: 'EtCms::User',
      module: :devise,
  }

  root to: "pages#home", :via => :get

  #resources :pages

  get '/pages/:id', :to => 'pages#show', :as => :page

  namespace :admin do
    get 'pages/*path/edit', :to => 'pages#edit'
    put 'pages/*path', :to => 'pages#update'
    delete 'pages/*path', :to => 'pages#destroy'
    resources :pages

  end

  #resources :pages, :path => ''
end
