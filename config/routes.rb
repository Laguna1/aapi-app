Rails.application.routes.draw do
  # get 'books/index'
  namespace :api do
    namespace :v1 do
      resources :books, only: %i[index create destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
