class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid , with: :profile_not_created
    skip_before_action :authenticate_user, only:[:index,:show]
    
    def index
        profiles = Profile.all
        render json: profiles
    end


    def create
        profile = Profile.create!(profile_params)
        render json: profile, status: :created
    end

    def show
        render json: find_profile_by_id
    end



    
    private

    def find_profile_by_id
      Profile.find(params[:id])
    end

    def profile_params
        params.permit(:first_name,:last_name,:bio,:resume_link,:user_id)
    end

    def profile_not_created
        render json: {"errors": ["could not create profile"] }, status: :unprocessable_entity
    end


  
end
