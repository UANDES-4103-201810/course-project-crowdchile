class AddDonationToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :donation, :integer
  end
end
