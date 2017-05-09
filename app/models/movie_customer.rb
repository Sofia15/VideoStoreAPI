class MovieCustomer < ApplicationRecord
  belongs_to :movie
  belongs_to :customer

end
