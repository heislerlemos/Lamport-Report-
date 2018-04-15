class CreateLamportNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :lamport_notes do |t|
      t.string :titulo
      t.text :texto
      t.string :email,              null: false, default: ""

      t.timestamps
    end
  end
end
