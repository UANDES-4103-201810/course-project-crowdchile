class Project < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_one :promise
	has_and_belongs_to_many :wishlists
	validates :title, presence: true
	validates :category_id, presence: true
	validates :description, presence: true
	

	def self.search(search)
	  if search
	    where('title LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end


	
end
