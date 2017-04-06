Rails.application.routes.draw do
  get 'employees/index'

  get 'employees/show'

  get 'employees/new'

  get 'employees/edit'

  get 'employees/create'

  get 'employees/update'

  get 'employees/destroy'

  get 'home/about'

  get 'home/contact'

  #get 'assignment/index'
  #get 'assignment/show'
  #get 'assignment/new'
  #get 'assignment/edit'
  #get 'assignment/create'
  #get 'assignment/update'
  #get 'assignment/destroy'
  #get 'store/index'
  #get 'store/show'
  #get 'store/new'
  #get 'store/edit'
  #get 'store/create'
  #get 'store/update'
  #get 'store/destroy'
  
  # Routes for main resources go here
  resources :assignments
  resources :stores
  resources :employees

  # Semi-static page routes go here
  
  
  # Set the root url here
  root 'home#about'
  
end
