Rails.application.routes.draw do
  root :to => "home#index"
  mount ActionCable.server => "/cable"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
