class CreateEmailOpportunities < ActiveRecord::Migration[7.0]
  def change
    create_table :email_opportunities do |t|
      t.string :recruiter_name
      t.string :recruiter_company
      t.datetime :email_received_at
      t.string :responded
      
      t.string :job_type
      t.string :job_duration
      t.string :job_title
      t.string :job_location_city
      t.string :job_location_type
      t.string :pay_rate

      t.text :job_description

      t.timestamps
    end
  end
end
