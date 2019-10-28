Rails.application.routes.draw do
  get 'score/index' => 'score#index'
  get 'score/new' => 'score#new'
  get '/' => 'home#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
