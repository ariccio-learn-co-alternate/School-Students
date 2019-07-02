Rails.application.routes.draw do
  resources :schools
  resources :students, except: [:new, :show]

  get '/students/new', to: 'students#new', as: :students_new_path
  get '/students/:id', to: 'students#show'
  delete '/schools/:id/delete_student/:student_id', to: 'schools#delete_student'
  # get '/schools', to: "schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
