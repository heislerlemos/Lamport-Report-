class AddAuthorToLamportNote < ActiveRecord::Migration[5.1]
  def change
    add_column :lamport_notes, :author, :string
  end
end
