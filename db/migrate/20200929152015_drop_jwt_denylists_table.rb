class DropJwtDenylistsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :jwt_denylists
  end
end
