require "test_helper"

describe MoviesController do
  describe "index" do
    it "is successful renders when there are many movies" do
      Movie.count.must_be :>, 0
      get movies_path
      must_respond_with :success
    end

    it "is successful when there are zero movie" do
      Movie.destroy_all
      get movies_path
      must_respond_with :success
    end
  end
end
