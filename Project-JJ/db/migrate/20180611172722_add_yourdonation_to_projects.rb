class AddYourdonationToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :yourdonation, :integer
  end
end
