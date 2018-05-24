class Project < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_one :promise
	has_and_belongs_to_many :wishlists
	validates :title, presence: true
	validates :category_id, presence: true
	validates :description, presence: true
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", large: "600x600>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	

	def self.search(search)
	  if search
	    where('title LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end


	
end
