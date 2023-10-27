class LoginController < ApplicationController

    #skip_before_action :authorized, only:[:create]

    def create
        user = User.find_by(username: params[:username])
        if user &.authenticate(params[:password])

            payload = {user_id: user.id}

            secret_key = ENV['JWT_SECRET_KEY']
            

            token = JWT.encode(payload,secret_key, 'HS256')

            render json:{token: token}, status: :accepted
        else
            render json: {error:"invalid username or password"}, status: :unauthorized
        end
    end
    
end
