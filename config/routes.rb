Rails.application.routes.draw do
root to: "batches#index"

  devise_for :users

namespace :api do
  resources :batches do
    resources :students, only: [:create, :update, :destroy]
  end
end

 resources :batches do
   resources :students
 end

 resources :students do
   resources :evaluations
 end


end
