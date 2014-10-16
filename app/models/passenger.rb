class Passenger < ActiveRecord::Base
  belongs_to :booking
  has_many :flights, through: :bookings

  validates :name, presence: true
end
