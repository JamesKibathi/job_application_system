class JobApplicationsController < ApplicationController

  before_action :authenticate_user

  def create
   
    @job_application = JobApplication.new(job_id: params[:job_id], user_id: @current_user.id)

    if @job_application.save

      render json: @job_application, status: :created
      
    else
      render json: @job_application.errors, status: :unprocessable_entity

    end
  
  end

  def index
      # List user's job applications
      render json: {Greetings:"Hello son"}
  end


end
