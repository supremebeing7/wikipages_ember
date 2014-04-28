Wikipages::Application.routes.draw do
  root :to => 'application#index'

  resources :contacts, :escept => [:new, :edit] do
    resources :phones
    resources :emails
    resources :addresses
  end
end

