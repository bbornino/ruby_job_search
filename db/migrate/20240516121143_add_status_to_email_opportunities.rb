class AddStatusToEmailOpportunities < ActiveRecord::Migration[7.0]
  def change
    add_column :email_opportunities, :opportunity_status, :string
  end
end
