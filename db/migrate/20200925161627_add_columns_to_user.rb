class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    
    add_column :users, :email, :string, null: false, default: ""
    add_column :users, :password_digest, :string
  end
end
