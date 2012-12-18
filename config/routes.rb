EtCms::Engine.routes.draw do
  devise_for :users, {
     class_name:		'EtCms::User',
     module: :devise,
   }

  root to: "pages#index"
  mount Ckeditor::Engine => '/ckeditor'
  resources :pages
  resources :pages, :path => ''
end
