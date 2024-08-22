# Note: Application Record in: /app/models/application_record.rb

class ReportsController < ApplicationController
  def per_week
    @reportData = ApplicationRecord.applied_per_week
  end

  def per_site
    @reportData = ApplicationRecord.applied_per_site
  end

  def per_campaign
    @reportData = ApplicationRecord.applied_per_campaign
  end

  def pathrise
    @reportData = ApplicationRecord.applied_pathrise
  end
end