class AddUseridToPrototypes < ActiveRecord::Migration[6.0]
  def change
    add_column :prototypes, :user_id, :integer
  end
end
