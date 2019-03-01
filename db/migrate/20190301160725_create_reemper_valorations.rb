class CreateReemperValorations < ActiveRecord::Migration[5.2]
  def change
    create_table :reemper_valorations do |t|
      t.integer :user_id
      t.integer :reemper_id
      t.integer :valoration
      t.text :description

      t.timestamps
    end
  end
end
