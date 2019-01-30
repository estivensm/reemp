class CreateSubspecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :subspecialties do |t|
      t.integer :specialty_id
      t.string :name
      t.text :description
      t.string :code

      t.timestamps
    end
  end
end
