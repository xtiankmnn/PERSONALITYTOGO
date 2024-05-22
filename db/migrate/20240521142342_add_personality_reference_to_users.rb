class AddPersonalityReferenceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :personality, foreign_key: true
  end
end
