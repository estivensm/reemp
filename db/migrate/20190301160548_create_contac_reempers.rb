class CreateContacReempers < ActiveRecord::Migration[5.2]
  def change
    create_table :contac_reempers do |t|
      t.integer :user_id
      t.integer :reemper_id
      t.text :description
      t.text :answer
      t.string :state_request

      t.timestamps
    end
  end
end
