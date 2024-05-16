class AddStatusToJobPostings < ActiveRecord::Migration[7.0]
  def change
    add_column :job_postings, :posting_status, :string
  end
end
