class EmailOpportunitiesController < ApplicationController
    def index
        @email_opportunities = EmailOpportunity.all
    end

    def new
        @email_opportunity = EmailOpportunity.new
    end

    def create 
        @email_opportunity = EmailOpportunity.new(email_opportunity_params)

        if @email_opportunity.save
            redirect_to action: "index"
        else
          render :new, status: :unprocessable_entity
        end
    end

    def edit
        @email_opportunity = EmailOpportunity.find(params[:id])
    end

    def update
        @email_opportunity = EmailOpportunity.find(params[:id])
    
        if @email_opportunity.update(email_opportunity_params)
          redirect_to action: "index"
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @email_opportunity = EmailOpportunity.find(params[:id])
        @email_opportunity.destroy
    
        redirect_to root_path, status: :see_other
    end
    
    private
    def email_opportunity_params
        params.require(:email_opportunity).permit(:recruiter_name, :recruiter_company, :opportunity_status, :email_received_at, :job_title, :job_type,  :job_duration, :pay_rate,  :job_location_type, :job_location_city, :job_description)
    end
end
