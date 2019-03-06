class AddStateToReemper < ActiveRecord::Migration[5.2]
  def change
    add_column :reempers, :state_loc, :string
    add_column :reempers, :img_reemp, :string
  end
end
