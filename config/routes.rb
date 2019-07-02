Rails.application.routes.draw do
  resources :schools
  resources :students

  delete '/schools/:id/delete_student/:student_id', to: 'schools#delete_student'
  # get '/schools', to: "schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
