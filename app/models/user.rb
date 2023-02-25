class User < ApplicationRecord
    has_secure_password
    validates :username, :email, presence:true, uniqueness: true, length: {minimum:2, maximum:50}
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
    has_many :photo
end
