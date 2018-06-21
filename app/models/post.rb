class Post < ApplicationRecord
	belongs_to :author
	validates_presence_of :body
	validates :title, presence: true, length: {maximum: 100}
end
