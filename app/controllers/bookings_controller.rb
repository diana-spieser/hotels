class BookingsController < ApplicationController

  def create
    @hotel_room = HotelRoom.find(params[:hotel_room_id])
    @booking = Booking.new(booking_params)
    @booking.hotel_room = @hotel_room
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to dashboard_path, notice: 'Your booking has been confirmed !'
    else
      redirect_to hotel_room_path, notice: 'Your booking has been canacelled !'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @hotel_room = @booking.hotel_room
    # @hotel_room = HotelRoom.find(params[:hotel_room_id])
    @booking.user_id = current_user.id
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end
