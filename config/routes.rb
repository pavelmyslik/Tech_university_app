Rails.application.routes.draw do
  get 'student_courses/create'
  get 'logins/new'
  get 'logins/create'
  get 'logins/logout'
  get  'about', to: 'pages#about'
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  resources :students
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#logout'
  post 'course_enroll', to: 'student_courses#create'
end
