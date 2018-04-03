class UserTicket < ApplicationRecord
  belongs_to :user
  belongs_to :ticket

  validate :valid_date
	
  def valid_date
    if self.time > self.ticket.event.start_date
       errors.add(:time, "can't be in the past")
    end
  end
end

