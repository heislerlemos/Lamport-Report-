class AddCompletoEmToItemEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :item_events, :completo_em, :datetime
  end
end
