class CreateReempers < ActiveRecord::Migration[5.2]
  def change
    create_table :reempers do |t|
      t.string :document_type
      t.string :document_numer
      t.string :profession_card
      t.string :academy_leve
      t.string :profession
      t.string :university
      t.boolean :university_state
      t.text :biography
      t.string :language
      t.integer :specialty_id
      t.integer :category_id
      t.integer :user_id
      t.boolean :verified
      t.string :category_name
      t.string :specialty_name
      t.string :city
      t.integer :valoration
      t.string :academy_level

      t.timestamps
    end
  end
end
