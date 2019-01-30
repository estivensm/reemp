class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :category_id
      t.string :country
      t.string :profession_name
      t.string :specialty_name
      t.string :city
      t.integer :profession_id
      t.integer :specialty_id
      t.string :instagram

      t.timestamps
    end
  end
end
