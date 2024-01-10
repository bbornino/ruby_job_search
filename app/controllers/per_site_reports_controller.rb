class PerSiteReportsController < ApplicationController
    def index
        @reportData = ApplicationRecord.applied_per_site
    end
end
