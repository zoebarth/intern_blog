class Author < ApplicationRecord
	has_many :posts
	def first_and_last
		"#{first_name} #{last_name}"
	end
	
end