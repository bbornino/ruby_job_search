class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.applied_per_site
    return ApplicationRecord.connection.select_all("SELECT 
                s.name, COUNT(*) AS site_count 
            FROM job_sites s JOIN job_postings p ON p.job_site_id = s.id 
            GROUP BY p.job_site_id")
  end

  def self.applied_per_week
    return ApplicationRecord.connection.select_all("SELECT 
                STRFTIME('%Y', p.applied_at) || '/' || STRFTIME('%W', p.applied_at) AS week_name,
                STRFTIME('%Y', p.applied_at) AS year, 
                STRFTIME('%W', p.applied_at) AS week,
                STRFTIME('%m', p.applied_at) AS month,  
                COUNT(*) AS week_count
            FROM job_sites s JOIN job_postings p ON p.job_site_id = s.id 
            GROUP BY week_name
            ORDER BY year ASC, week ASC")
  end

  def self.applied_per_campaign
    return ApplicationRecord.connection.select_all("
            SELECT
                s.name AS search_site_name, 
                p.company_name, p.posting_title, p.posting_location_city, p.posting_location_type, 
                STRFTIME('%m-%d-%Y', p.applied_at) AS applied_on,
                STRFTIME('%m-%d-%Y', p.interviewed_at) AS interviewed_on,
                STRFTIME('%m-%d-%Y', p.rejected_at) AS rejected_on
            FROM job_postings p
            JOIN job_sites s ON p.job_site_id = s.id
            WHERE p.applied_at > '2024-01-01'")
  end
end
