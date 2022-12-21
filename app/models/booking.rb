class Booking < ApplicationRecord
  belongs_to :hotel_room
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
end
