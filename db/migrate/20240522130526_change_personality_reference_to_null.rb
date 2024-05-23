class ChangePersonalityReferenceToNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :personality_id, true
  end
end
