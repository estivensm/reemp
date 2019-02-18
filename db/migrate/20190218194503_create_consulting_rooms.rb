class CreateConsultingRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :consulting_rooms do |t|
      t.string :address
      t.decimal :lat
      t.decimal :lng
      t.string :city
      t.string :first_photo
      t.string :sub_photo
      t.string :state
      t.integer :user_id
      t.integer :reemper_id
      t.boolean :info_state

      t.timestamps
    end
  end
end
