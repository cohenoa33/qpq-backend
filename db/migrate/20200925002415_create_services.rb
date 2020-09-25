class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.boolean :isService
      t.text :offeringDescription
      t.text :exchangeDescription
      t.string :img_url
      t.integer :value

      t.timestamps
    end
  end
end
