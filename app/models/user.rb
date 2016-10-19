class User < ApplicationRecord

		has_many :microposts

		validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  		validates :email, presence: true

  			
end


		User.create(name: "").valid? # => true
  		User.create(name: nil).valid? #=> false

  		User.create(email: "").valid? # => true
  		User.create(email: nil).valid? #=> false