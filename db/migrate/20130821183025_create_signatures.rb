class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.integer :petition_id
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :zipcode
      t.text :reason
      t.timestamps
    end
  end
end
