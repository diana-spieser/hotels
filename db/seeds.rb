require "open-uri"

puts 'Seed: Deleting existing users...'
User.destroy_all

puts 'Seed: Creating users...'
puts "-------------------------------------------------------------------------"

user1 = User.create(email: "user1@gmail.com", password: 'password')
user2 = User.create(email: "user2@gmail.com", password: 'password')

puts 'Seed: Users created..'
puts "-------------------------------------------------------------------------"

puts 'Seed: Deleting existing hotel rooms...'
HotelRoom.destroy_all

puts 'Seed: Creating hotel rooms...'
puts "-------------------------------------------------------------------------"

hotel_room_penthouse = HotelRoom.create!(
  name: "PENTHOUSE SUITE",
  description: "The biggest room in the house offers self catering facilities and views. It’s spacious and bright, with a kitchenette and dining area, complemented by a large private terrace with loungers for you to soak up the sun. Spoil yourself! You deserve it.",
  price: 340
)
hotel_room_deluxe = HotelRoom.create!(
  name:"DELUXE ROOM",
  description: "Each of our Deluxe Rooms has unique characteristics; they are fun, contemporary and charming spaces which provide the perfect getaway when spending a few nights in the city.",
  price:420
)
hotel_room = HotelRoom.create!(
  name:"SUPERIOR ROOM",
  description: "Settle in for a longer stay in one of our large and beautifully restored Superior Rooms. Eclectic furniture, original features and extra comfort will ensure you get all the rest and relaxation you planned on.",
  price: 650
)
hotel_room_duplex_suite = HotelRoom.create!(
  name: "DUPLEX SUITE",
  description:"Double the comfort with our Duplex Suites which are spread across two floors. Each apartment has its own private entrance, leading to a delightful living room and kitchenette. On the second floor, one finds a spacious bedroom and private bathroom, displaying perfectly renovated Maltese features, including the traditional Maltese balcony. Our private apartments provide for the perfect city experience.",
  price: 380
)
puts 'Seed: Hotel Rooms  created..'
puts "-------------------------------------------------------------------------"

puts 'Seed: Deleting existing users...'
Booking.destroy_all

puts 'Seed: Creating bookings...'
puts "-------------------------------------------------------------------------"

booking_one = Booking.create(
  start_date: "12/12/2022",
  end_date: "31/12/2022",
  user: user1,
  hotel_room: hotel_room_deluxe
  )
booking_two = Booking.create(
  start_date: "01/03/2023",
  end_date: "12/03/2023",
  user: user1,
  hotel_room: hotel_room_duplex_suite
)

puts 'Seed: Bookings  created..'
puts "-------------------------------------------------------------------------"

puts 'Seed: Finished seeding!'
puts "-------------------------------------------------------------------------"
