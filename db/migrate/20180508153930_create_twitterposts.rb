class CreateTwitterposts < ActiveRecord::Migration[5.1]
  def change
    create_table :twitterposts do |t|
      t.text :message

      t.timestamps
    end
  end
end
