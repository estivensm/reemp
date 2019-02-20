class AddRedesToReemper < ActiveRecord::Migration[5.2]
  def change
    add_column :reempers, :instagram, :string
    add_column :reempers, :facebook, :string
    add_column :reempers, :twitter, :string
  end
end
