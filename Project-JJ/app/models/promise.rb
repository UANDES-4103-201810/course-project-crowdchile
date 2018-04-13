class Promise < ApplicationRecord
	belongs_to :project
	validates :price, presence: true, numericality: true
	validates :description, presence :true

end
