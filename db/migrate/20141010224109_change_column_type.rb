class ChangeColumnType < ActiveRecord::Migration
  def change
    remove_column :bookings, :passenger_id
    change_column :bookings, :flight_id, :string
  end
end
