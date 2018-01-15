Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'main/index'
  get '/dashboard/:name', to: 'dashboard#index'
  get '/dashboard/:name/raportti', to: 'dashboard#reports'
  get '/dashboard/:name/data', to: 'dashboard#data'
  get 'dashboard/index'
  post '/dashboard/:name/save_data', to: 'dashboard#save_data'
  get '/dashboard/:name/save_data' => redirect('/dashboard/%{name}/data')
  root 'main#index'
end
