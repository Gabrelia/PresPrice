# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: routes.rb
# Description: To connect addresses to functions in controllers that will display their respective views
# Last modified on: 11/30/17

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
   get 'signup'  => 'users#new'
   get '/login'  => 'sessions#new'
   post 'login' => 'sessions#create'
   delete 'logout' => 'sessions#destroy' 

   root 'search#index'
   get 'users' => 'users#new'
   
   get 'searchbar' => 'search#index'  
   get 'searchbar2' => 'search#index2'
   
   get 'results' => 'search#results', as: :search
   get 'results2' => 'search#results2', as: :search2
   resources :users, :medicines, :searches

end
