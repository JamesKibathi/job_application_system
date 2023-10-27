class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid , with: :profile_not_created

    def index
        profiles = Profile.all
        render json: profiles
    end


    def create
        profile = Profile.create!(profile_params)
        render json: profile, status: :created
    end

    
    private
    def profile_params
        params.permit(:first_name,:last_name,:bio,:resume_link,:user_id)
    end

    def profile_not_created
        render json: {"errors": ["could not create profile"] }, status: :unprocessable_entity
    end


  
end
