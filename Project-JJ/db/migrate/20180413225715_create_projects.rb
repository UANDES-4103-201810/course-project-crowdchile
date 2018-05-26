class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :donationamount
      t.integer :user_id
      t.datetime :deliverydate
      t.integer :promise_id
      t.integer :category_id
      t.boolean :outstanding

      t.timestamps
    end
  end
end
