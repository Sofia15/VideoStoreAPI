require "test_helper"

describe MovieCustomer do
  describe "relations" do
    it "has a movie" do
      mc = movie_customers(:one)
      mc.must_respond_to :movie
      mc.movie.must_be_kind_of Movie
    end

    it "has a customer" do
      mc = movie_customers(:one)
      mc.must_respond_to :customer
      mc.customer.must_be_kind_of Customer
    end
  end

  describe "validations" do
    
  end
end
