class CreateJobSites < ActiveRecord::Migration[7.0]
  def change
    create_table :job_sites do |t|
      t.string :name  #has to be less than 255 characters
      t.string :url
      t.string :review_text
      t.string :email_alert_info
      t.text :description  #30k char
      
      t.boolean :active
      t.boolean :stores_resume
      t.integer :rating
      t.datetime :resume_updated_at
      t.binary :logo
      
      t.timestamps
    end
  end
end
