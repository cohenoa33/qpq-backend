class AddColumnsToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :provider_id, :integer
    add_column :requests, :requester_id, :integer
  end
end
