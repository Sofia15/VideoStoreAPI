class RentalsController < ApplicationController
  # attr_accessor :movie_id, :customer_id, :checkout_date, :due_date

  def checkout
    movie = Movie.find_by(title: params[:title])
    rental_info = {
      customer_id: rental_params[:id],
      movie_id: movie.id,
      checkout_date: Date.today,
      due_date: Date.today + 5
    }
    rental = Rental.new(rental_info)

    if rental.save!
      render status: :ok, json: {message: "Thanks for checking out #{movie.title}. Your due date is #{rental.due_date}."}
    else
      render status: :bad_request, json: {errors: rental.errors.messages}
    end
  end

  def checkin
    rental = Rental.find_by(params[:rental][:id])
    checkin_info = {

    }
    rental = Rental.new(rental_info)

    if rental.save!
      render status: :ok, json: {message: "Thanks for checking out #{movie.title}. Your due date is #{rental.due_date}."}
    else
      render status: :bad_request, json: {errors: rental.errors.messages}
    end
  end

  private

  def rental_params
    params.require(:customer).permit(:id)
  end

end
