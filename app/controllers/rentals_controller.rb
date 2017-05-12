class RentalsController < ApplicationController
  attr_accessor :movie_id, :customer_id, :checkout_date, :due_date
  #
  # def initialize
  #   @movie_id = movie_id
  #   @customer_id = customer_id
  #   @checkout_date = checkout_date
  #   @due_date = due_date
  # end


  def checkout
    # params = {
    #   customer_id: rental_params,
    #   movie_id: Movie.find_by(title: params[:title]).id,
    #   checkout_date: Time.zone.now.beginning_of_day,
    #   due_date: Time.zone.now.beginning_of_day + 5
    movie = Movie.find_by(title: params[:title]).id
    rental_info = {
      customer_id: rental_params[:id],
      movie_id: movie,
      checkout_date: "Right freaking now",
      due_date: "Right freaking now"
    }
    rental = Rental.new(rental_info)

    if rental.save!
      render status: :ok, json: {id: rental.id}
    else
      render status: :bad_request, json: {errors: rental.errors.messages}
    end
  end

  private

  def rental_params
    params.require(:customer).permit(:id)
  end
end
