require "test_helper"

describe CustomersController do
  describe "index" do
    it "is successful renders when there are many customers" do
      Customer.count.must_be :>, 0
      get customers_path
      must_respond_with :success
    end

    it "is successful when there are zero customer" do
      Customer.destroy_all
      get customers_path
      must_respond_with :success
    end
  end
end
