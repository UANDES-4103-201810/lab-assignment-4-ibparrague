class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets

	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z-0-9]+\.)+[a-z]{2,})\z/,
    message: "only allows letters" }

	validates :phone, length: {in: 9..12}
	validates :password, length: {in: 8..12}
	validates :password, format: { with: /[a-zA-Z0-9]/}

end


