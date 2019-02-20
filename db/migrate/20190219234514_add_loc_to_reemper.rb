class AddLocToReemper < ActiveRecord::Migration[5.2]
  def change
    add_column :reempers, :lat, :decimal
    add_column :reempers, :lng, :decimal
  end
end
