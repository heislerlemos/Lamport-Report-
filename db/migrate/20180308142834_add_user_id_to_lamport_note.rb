class AddUserIdToLamportNote < ActiveRecord::Migration[5.1]
  def change
    add_column :lamport_notes, :user_id, :integer
   # add_column :eventos, :user_id, :integer
  end
end
