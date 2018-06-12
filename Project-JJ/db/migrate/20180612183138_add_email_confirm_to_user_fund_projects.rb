class AddEmailConfirmToUserFundProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :user_fund_projects, :email_confirmed, :boolean
    add_column :user_fund_projects, :confirm_token, :string
  end
end
