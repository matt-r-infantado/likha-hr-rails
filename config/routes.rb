Rails.application.routes.draw do
  namespace 'api' do
    resources :employees, only: [:create, :index, :show, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
