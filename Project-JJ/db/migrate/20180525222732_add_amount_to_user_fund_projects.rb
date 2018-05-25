class AddAmountToUserFundProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :user_fund_projects, :amount, :integer
  end
end
