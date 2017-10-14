Rails.application.routes.draw do
 root "batches#index"

 resources :batches do
   resources :students
 end

 resources :students do
   resources :evaluations
 end
end
