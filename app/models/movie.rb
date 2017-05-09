class Movie < ApplicationRecord
  has_many :movie_customers
  has_many :customers, through: :movie_customers

  validates :title, presence: true
end
