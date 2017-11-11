# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: routes.rb
# Description: To connect addresses to functions in controllers that will display their respective views
# Last modified on: 11/10/17

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   

   get 'home' => 'pages#home'
   root 'pages#home'
   get 'search' => 'search#searchbar'
   get 'results' => 'search#index'
   get 'signup' => 'pages#signup'
   get 'savedsearches' => 'pages#savedsearches'
   get 'searchtwo' => 'search#searchbar2'
   get 'searchresults2' => 'search#searchresults2'
   get 'genericone' => 'pages#generic1'
   get 'generictwo' => 'pages#generic2'
end
