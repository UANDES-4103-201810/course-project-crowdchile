class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
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
      t.boolean :admin

      t.timestamps
    end
  end
end
