class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :username
      t.string :password
      t.text :description
      t.string :name
      t.string :lastname
      t.integer :telephone
      t.string :mail
      t.string :country
      t.string :profession
      t.integer :age

      t.timestamps
    end
  end
end
