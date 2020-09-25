class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :birth_year
      t.string :img_url

      t.timestamps
    end
  end
end
