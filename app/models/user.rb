class User < ApplicationRecord
    has_secure_password

    before_create :generate_authentication_token

    private

    def generate_authentication_token
        self.token = SecureRandom.hex(16)
    end
end
