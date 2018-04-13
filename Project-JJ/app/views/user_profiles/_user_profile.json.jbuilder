json.extract! user_profile, :id, :username, :password, :description, :name, :lastname, :telephone, :mail, :country, :profession, :age, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
