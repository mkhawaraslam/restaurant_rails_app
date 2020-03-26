class AddMenuIdToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :menu_id, :integer
  end
end
