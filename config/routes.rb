
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users
      end
    end
  end

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :objectives
      end
    end
  end




  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :follows
      end
    end
  end
