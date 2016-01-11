Rails.application.routes.draw do
  resources :posts
  get 'welcome/index' => 'welcome#index'
  root 'welcome#index'
end
