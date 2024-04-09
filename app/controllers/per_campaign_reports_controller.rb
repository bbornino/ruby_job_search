class PerCampaignReportsController < ApplicationController
    def index
        @reportData = ApplicationRecord.applied_per_campaign
    end
end
