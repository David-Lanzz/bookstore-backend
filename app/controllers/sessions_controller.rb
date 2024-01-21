class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
       if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: {token: user.token, user: user}, status: :ok
       else
        render json: {error: "Invalid email or password"}, status: :unauthorized
       end
    end

    def destroy
        session[:user_id] = nil
        render json: {message: "Logout successful"}, status: :ok
    end
end
