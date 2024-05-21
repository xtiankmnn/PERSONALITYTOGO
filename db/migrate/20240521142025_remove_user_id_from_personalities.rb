class RemoveUserIdFromPersonalities < ActiveRecord::Migration[7.1]
  def change
    remove_column :personalities, :user_id, :integer
  end
end
