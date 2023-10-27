class JobApplicationsController < ApplicationController

  before_action :authenticate_user
  before_action :set_job

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

  def authenticate_user
    unless user_authenticated?
      render json: {error:'Unauthorized'}, status: :unauthorized

    end
  end

  def user_authenticated?
    token = request.headers['Authorization']&.split('')&.last
    secret_key = ENV['JWT_SECRET_KEY']
    return false unless token
    begin
      decoded = JWT.decode(token, secret_key, true, algorithm: 'HS256')
      user_id = decoded[0]['user_id']
      current_user = User_find_by(id: user_id)
      # Check if the user exists and is valid
      return !current_user.nil?
    rescue JWT::DecodeError
      return false
    end
  end


  def set_job
    @job = Job.find(params[:job_id])
  end

end
