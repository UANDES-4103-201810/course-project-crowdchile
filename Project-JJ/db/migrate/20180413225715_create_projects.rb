class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :donationamount
      t.string :category
      t.integer :user_id
      t.datetime :deliverydate
      t.integer :promise_id

      t.timestamps
    end
  end
end
