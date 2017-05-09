class Customer < ApplicationRecord
  has_many :movie_customers
  has_many :movies, through: :movie_customers

  validates :name, presence: true
end
