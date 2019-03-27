class CreateJoinTableReemperSubspecialty < ActiveRecord::Migration[5.2]
  def change
    create_join_table :reempers, :subspecialties do |t|
      # t.index [:reemper_id, :subspecialty_id]
      # t.index [:subspecialty_id, :reemper_id]
    end
  end
end
