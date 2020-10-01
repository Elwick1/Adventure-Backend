class User < ApplicationRecord

    validates :username, uniqueness: true
    validates :username, presence: true
    # validates :password, length: {minimum: 6 }
    validates :password, presence: true
    
end
