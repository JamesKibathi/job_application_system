class ApplicationController < ActionController::API

  before_action :authenticate_user

  private

  def authenticate_user
    unless user_authenticated?
      render_unauthorized('User not logged in or unauthorized')
    end
  end

  def user_authenticated?
  token = request.headers['Authorization']&.split(' ')&.last 
  secret_key = ENV['JWT_SECRET_KEY']

  unless token
    return false
  end

  begin
    decoded = JWT.decode(token, secret_key, true, algorithm: 'HS256')
    user_id = decoded[0]['user_id']
    @current_user = User.find(user_id)
  rescue JWT::DecodeError
    @current_user = nil
  end

  !!@current_user
  end

  def render_unauthorized(message)
    render json: { error: message }, status: :unauthorized
  end
end
