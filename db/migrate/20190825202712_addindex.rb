class Addindex < ActiveRecord::Migration[6.0]
  def change
    add_column("users", "login", :string, limit: 25, null:false, after: 'last_name')
    puts '*** ADDING index to login'
    add_index("users", "login")
  end
end
