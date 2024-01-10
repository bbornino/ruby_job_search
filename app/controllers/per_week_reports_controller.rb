class PerWeekReportsController < ApplicationController
    def index
        @reportData = ApplicationRecord.applied_per_week
    end
end
