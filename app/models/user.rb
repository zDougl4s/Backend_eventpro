class User < ApplicationRecord
    has_many :tickets 
    has_many :events, through: :ticket
    has_secure_password 
    validates :username, uniqueness: { case_sensitive: false }
end
