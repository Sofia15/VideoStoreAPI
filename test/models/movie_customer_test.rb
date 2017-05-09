require "test_helper"

describe MovieCustomer do
  let(:movie_customer) { MovieCustomer.new }

  it "must be valid" do
    value(movie_customer).must_be :valid?
  end
end
