class AddCheckindateToRentals < ActiveRecord::Migration[5.0]
  def change
    add_column :rentals, :checkindate, :date
  end
end
