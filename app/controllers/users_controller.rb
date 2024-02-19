require "mail"

class UsersController < ApplicationController
    def create
       user = User.new(user_params)
       user.confirmed_email = false
       user.otp = SecureRandom.hex(3)

       if(user.save)
      #   to_email = user.email
      #   subject = "Lanzz API"
      #   content = "Your OTP code is #{user.otp}"

      #   mail = Mail.new do
      #    from "lanzzd191@gmail.com"
      #    to to_email
      #    subject subject
      #    body content
      #   end

      #   mail.delivery_method(:smtp, { address: "smtp.gmail.com", port: 587 })
      #  begin
      #    mail.deliver!
      #    render json: { message: 'OTP sent successfully.' },status: :created
      # rescue StandardError => e
      #    Rails.logger.error "Error sending email: #{e.message}"
      #    Rails.logger.error e.backtrace.join("\n")
      #    render json: { error: 'Failed to send OTP.' }, status: :internal_server_error
        # end       
         render json: {message: "user created successfully"},status: :created

       else
        render json: {error: user.errors.full_messages}, status: :unprocessable_entity
       end
    end

   def confirm_user
      @user = User.find_by(email: params[:email])
      if @user && @user.otp == params[:otp]
         @user.update(confirmed_email: true)
         render json: {message: "User confirmed successfully"}
      elsif @user.nil
         render json: {error: "User not found"}
      else
         render json: {error: "OTP code incorrect"}
      end
   end

    private
    def user_params
       params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
