class AddResumeFormatToJobSites < ActiveRecord::Migration[7.0]
  def change
    add_column :job_sites, :resume_format, :string
    add_column :job_sites, :github_field, :boolean
    add_column :job_sites, :project_site_field, :boolean
  end
end
