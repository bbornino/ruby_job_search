class AddInterviewDateToJobPostings < ActiveRecord::Migration[7.0]
  def change
    add_column :job_postings, :interviewed_at, :datetime
  end
end
