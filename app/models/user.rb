class User < ApplicationRecord
    has_secure_password

    before_create :generate_authentication_token

    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true

    private

    def generate_authentication_token
        self.token = SecureRandom.hex(16)
    end
end
