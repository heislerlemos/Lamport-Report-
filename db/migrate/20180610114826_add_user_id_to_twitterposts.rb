class AddUserIdToTwitterposts < ActiveRecord::Migration[5.1]
  def change
    add_column :twitterposts, :user_id, :integer
    add_index :twitterposts, :user_id
  end
end
