class JobApplicationsController < ApplicationController

  before_action :authenticate_user 

  def create
    # Handle user job applications
    job = Job.find(params[:job_id])

    job_application = current_user.job_applications.new(job: job)

    if job_application.save
      render json: job_application, status: :create
      
    else
      render json: job_application.errors, status: :unprocessable_entity

    end
  end

  def index
      # List user's job applications
  end


  private
  
  def job_application_params
    params.require(:job_application).permit(:job_id)
  end
end
