class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :personality_id

      t.timestamps
    end
  end
end
