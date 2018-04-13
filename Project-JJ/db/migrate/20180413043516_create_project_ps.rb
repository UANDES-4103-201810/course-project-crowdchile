class CreateProjectPs < ActiveRecord::Migration[5.2]
  def change
    create_table :project_ps do |t|

      t.timestamps
    end
  end
end
