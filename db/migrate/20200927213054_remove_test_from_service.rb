class RemoveTestFromService < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :test, :integer
  end
end
