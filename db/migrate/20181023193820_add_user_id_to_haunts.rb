class AddUserIdToHaunts < ActiveRecord::Migration[5.2]
  def change
    add_column :haunts, :user_id, :integer
  end
end
