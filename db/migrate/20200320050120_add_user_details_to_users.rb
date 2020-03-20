class AddUserDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :f_name, :string
  	add_column :users, :l_name, :string
  	add_column :users, :role, :string
  end
end
