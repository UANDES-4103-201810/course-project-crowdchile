class Project < ApplicationRecord
	belongs_to :user
	has_one :promise
	has_and_belongs_to_many :wishlist
	validates :title, presence: true
	validates :category, presence: true
	validates :description, presence: true
	

	def self.search(search)
	  if search
	    where('title LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end


	
end
