EtCms::Engine.routes.draw do
  root to: "pages#home", :via => :get
  mount Ckeditor::Engine => '/ckeditor'
  match 'users/sign_up' => redirect('/404.html')

  devise_for :users, {
      class_name: 'EtCms::User',
      module: :devise,
  }

  get '/pages/home'
  get '/pages/:id', :to => 'pages#show', :as => :page

  namespace :admin do
    root to: "pages#index"
    resources :pages
    resources :user, :controller => "user"

  end

  resources :pages
  resources :pages, :path => ''
end
