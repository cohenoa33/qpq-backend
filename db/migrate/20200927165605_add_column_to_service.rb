class AddColumnToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :test, :integer
  end
end
