class CreateJobPostings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_postings do |t|
      t.string :company_name
      t.string :company_url

      t.string :posting_title
      t.string :posting_id
      t.string :posting_url
      t.string :posting_location_city
      t.string :posting_location_type

      t.text :posting_comments

      t.datetime :applied_at
      t.datetime :rejected_at
      t.binary :company_logo

      t.references :job_site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
