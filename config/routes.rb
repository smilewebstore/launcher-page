LauncherPage::Application.routes.draw do
  resources :users, :only => [:index, :create]

  root :to => 'users#index'
end