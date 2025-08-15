class User < ApplicationRecord
    has_many :posts , dependent: :destroy
    before_save { self.email = email.downcase }
    validates :name, presence:true, length:{minimum: 4, maximum: 50}
    validates :email, presence:true, length:{ maximum: 100}, 
      uniqueness:true,format:{with: /\A(\w+.\d+@osu\.edu)|(\w+@gmail\.com)\Z/i }
    validates :password, presence:true, 
              length:{minimum:6}
    has_secure_password
end