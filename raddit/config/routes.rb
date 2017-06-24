Rails.application.routes.draw do
  devise_for :users
  resources :links
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Added because of the requirement of devise
  # Meaning: root set to the links controller with index action
  # i.e. when you visit this 0.0.0.0:3000, you are visiting http://0.0.0.0:3000/links
  root to: "links#index"
end
