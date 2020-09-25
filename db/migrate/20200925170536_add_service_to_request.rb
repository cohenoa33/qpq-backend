class AddServiceToRequest < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :service, null: false, foreign_key: true
  end
end
