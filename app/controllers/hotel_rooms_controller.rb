class HotelRoomsController < ApplicationController
  def index
    @hotel_rooms = HotelRoom.all
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @hotel_rooms = HotelRoom.where(sql_query, query: "%#{params[:query]}%")
    else
      @hotel_rooms = HotelRoom.all
    end
  end

  def show
    @hotel_room = HotelRoom.find(params[:id])
    @booking = Booking.new
  end

    private

  def hotel_room_params
    params.require(:hotel_room).permit(:name, :description, :price)
  end

  end
