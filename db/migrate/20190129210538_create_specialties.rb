class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.string :code

      t.timestamps
    end
  end
end
