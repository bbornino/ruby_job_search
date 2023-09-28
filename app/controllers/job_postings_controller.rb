class JobPostingsController < ApplicationController
    def create 
        @job_site = JobPosting.find(params[:job_site_id])
        @job_posting = @job_site.job_postings.create(job_postings_params)
        redirect_to job_site_path(@job_site)
    end

    def destroy
        @job_site = JobSite.find(params[:job_site_id])
        @job_posting = @job_site.job_postings.find(job_postings_params)
        @job_posting.destroy
        redirect_to job_site_path(@job_site), status: :see_other
    end

    private
    def job_postings_params
        params.require(:job_posting).permit(:company_name, :company_url, :posting_title, :posting_url, :posting_id, :posting_location_city, :posting_location_type, :applied_at, :rejected_at, :posting_comments)
    end

end
