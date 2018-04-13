class UserProfile < ApplicationRecord
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true, length: { in: 6..20 }
	validates :email, presence: true, uniqueness: true, format: { with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
	validates :name, presence: true
	validates :lastname, presence: true
	validates :country, presence: true

end
