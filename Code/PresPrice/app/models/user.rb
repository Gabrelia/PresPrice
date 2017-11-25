class User < ApplicationRecord
	ActiveRecord::Base

	has_secure_password
	
end
