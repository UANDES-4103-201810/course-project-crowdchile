class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.integer :userprofile_id

      t.timestamps
    end
  end
end
