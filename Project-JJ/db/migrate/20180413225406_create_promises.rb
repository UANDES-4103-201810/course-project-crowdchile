class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
