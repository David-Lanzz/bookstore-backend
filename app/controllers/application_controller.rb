class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
    def get_token
      if user_signed_in?
      token = current_user.authentication_token
      render json: {token: token}
      else
       render json: {error: "User not logged in"}
      end
    end
end
