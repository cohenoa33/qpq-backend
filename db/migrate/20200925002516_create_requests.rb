class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer "request_id"
      t.integer "provider_id"
      t.string "status", default: "pending"
      t.text "message"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false

      t.timestamps
    end
  end
end
