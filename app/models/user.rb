class User < ApplicationRecord
    has_many :pictures
    has_many :comments

    validates :email, uniqueness: true, presence: true
    validates :username, uniqueness: true, presence: true
end
