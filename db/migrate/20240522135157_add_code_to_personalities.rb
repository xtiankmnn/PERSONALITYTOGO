class AddCodeToPersonalities < ActiveRecord::Migration[7.1]
  def change
    add_column :personalities, :code, :string
  end
end
