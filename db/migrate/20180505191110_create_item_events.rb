class CreateItemEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :item_events do |t|
      t.string :content
      t.references :evento, foreign_key: true

      t.timestamps
    end
  end
end
