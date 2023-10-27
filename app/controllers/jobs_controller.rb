class JobsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid , with: :job_not_created

    def index
        jobs = Job.all
        render json: jobs 
    end

    def create
        job = Job.create!(job_params)
        render json: job, status: :created
    end

    private
    def job_params
        params.permit(:title,:description)
    end

    def job_not_created
         render json:{errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
