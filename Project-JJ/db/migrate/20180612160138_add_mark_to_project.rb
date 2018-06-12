class AddMarkToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :mark, :boolean
  end
end
