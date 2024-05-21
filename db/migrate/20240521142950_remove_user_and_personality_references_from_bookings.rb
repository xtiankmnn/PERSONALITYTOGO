class RemoveUserAndPersonalityReferencesFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :user_id, :integer
    remove_column :bookings, :personality_id, :integer
  end
end
