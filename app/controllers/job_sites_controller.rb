class JobSitesController < ApplicationController
  def index
    @job_sites = JobSite.all
  end

  def show
    @job_site = JobSite.find(params[:id])
  end

  def new
    @job_site = JobSite.new
  end

  def create
    @job_site = JobSite.new(job_site_params)

    if @job_site.save
      redirect_to @job_site
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @job_site = JobSite.find(params[:id])
  end

  def update
    @job_site = JobSite.find(params[:id])

    if @job_site.update(job_site_params)
      redirect_to @job_site
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @job_site = JobSite.find(params[:id])
    @job_site.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def job_site_params
    params.require(:job_site).permit(:name, :url, :rating, :resume_format, :github_field, :project_site_field,  :last_visited_at, :resume_updated_at,  :description, :review_text)
  end
end
