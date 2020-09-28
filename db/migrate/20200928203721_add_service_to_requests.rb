class AddServiceToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :response_service_id, :integer
    add_column :requests, :requested_service_id, :integer
  end
end
