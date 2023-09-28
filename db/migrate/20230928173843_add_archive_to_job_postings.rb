class AddArchiveToJobPostings < ActiveRecord::Migration[7.0]
  def change
    add_column :job_postings, :archive, :string
    add_column :job_postings, :employment_type, :string
    add_column :job_postings, :pay_range, :string
  end
end
