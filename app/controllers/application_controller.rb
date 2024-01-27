class ApplicationController < ActionController::API
 # before_action :authenticate_user_with_token

  private

  # def authenticate_user_with_token
  #   token = request.headers['Authorizaton']&.split(' ')&.last
  #   user = User.find_by(token: token)
  #   if user
  #       @current_user = user
  #   else
  #       render json: {error: "Unauthorized"}, status: :unauthorized
  #   end
  # end

  # def current_user
  #   @current_user
  # end
end
