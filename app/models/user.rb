class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :lists
    has_many :orders

    validates :username, uniqueness: {case_sensitive: false}
    validates :username, presence: true
    validates :password, presence: true
end
