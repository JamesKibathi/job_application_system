class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_user_details 

    skip_before_action :authenticate_user
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    private
    def user_params
        params.permit(:email,:username,:password,:password_confirmation)
    end

    def invalid_user_details invalid
        render json:{errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
