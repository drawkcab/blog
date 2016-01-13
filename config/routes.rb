Rails.application.routes.draw do
  resources :posts
  resources :projects
  get 'welcome/index' => 'welcome#index'
  root 'welcome#index'
end
