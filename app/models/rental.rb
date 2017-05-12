class Rental < ApplicationRecord
  belongs_to :movie
  belongs_to :customer

  def self.overdue
    overdue_rentals = Rental.where("checkin_date is null AND due_date < ?", Date.today)



  end
end
