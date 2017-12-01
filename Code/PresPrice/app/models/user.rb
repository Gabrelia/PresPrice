# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: user.rb
# Description: Sets validatation for sign up parameters
# Last modified on: 11/30/17
class User < ApplicationRecord
	#ActiveRecord::Base

	has_secure_password

    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                     format: { with: VALID_EMAIL_REGEX },
                     uniqueness: { case_sensitive: false }
    validates :first_name, presence:true
    validates :last_name, presence:true
	
end
