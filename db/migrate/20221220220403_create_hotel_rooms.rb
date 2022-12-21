class CreateHotelRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :hotel_rooms do |t|
      t.string :name
      t.text :description
      t.float :price
      t.timestamps
    end
  end
end
