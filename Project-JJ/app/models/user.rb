class User < ApplicationRecord
	has_many :project
	has_one :user_profile
	has_one :wishlist
end
