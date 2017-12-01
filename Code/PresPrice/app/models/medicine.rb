# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: medicine.rb
# Description: Take parameter to search and order medicines
# Last modified on: 11/30/17
class Medicine < ApplicationRecord
   def self.search(search)
    if search
      where("name LIKE ? ", "%#{search}%")
    else
      order('name DESC')
    end
  end
end
