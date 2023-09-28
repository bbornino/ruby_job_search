class JobSite < ApplicationRecord
    has_many :job_postings, dependent: :destroy
end
