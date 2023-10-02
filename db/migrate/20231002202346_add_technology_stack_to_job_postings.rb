class AddTechnologyStackToJobPostings < ActiveRecord::Migration[7.0]
  def change
    add_column :job_postings, :technology_stack, :string
  end
end
