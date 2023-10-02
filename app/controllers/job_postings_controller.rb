class JobPostingsController < ApplicationController
    def index
        @job_postings = JobPosting.all
    end

    def show
        @job_posting = JobPosting.find(params[:id])
    end

    def create 
        @job_site = JobSite.find(params[:job_site_id])
        @job_posting = @job_site.job_postings.create(job_postings_params)
        redirect_to job_site_path(@job_site)
    end

    def edit
        @job_posting = JobPosting.find(params[:id])
    end

    def update
        @job_posting = JobPosting.find(params[:id])
    
        if @job_posting.update(job_postings_params)
          redirect_to job_site_path(@job_posting.job_site_id)
        else
          render :edit, status: :unprocessable_entity
        end
      end

    def destroy
        @job_site = JobSite.find(params[:job_site_id])
        @job_posting = @job_site.job_postings.find(params[:id])
        @job_posting.destroy
        redirect_to job_site_path(@job_site), status: :see_other
    end

    private
    def job_postings_params
        params.require(:job_posting).permit(:company_name, :company_url, :posting_title, :posting_url, :posting_location_city, :posting_location_type, :employment_type, :posting_id, :pay_range, :applied_at, :rejected_at, :archive, :posting_comments)
    end

end
