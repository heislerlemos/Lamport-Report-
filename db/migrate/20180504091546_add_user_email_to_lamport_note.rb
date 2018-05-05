class AddUserEmailToLamportNote < ActiveRecord::Migration[5.1]
  def change
    add_column :lamport_notes, :user_email, :string
  end
end
