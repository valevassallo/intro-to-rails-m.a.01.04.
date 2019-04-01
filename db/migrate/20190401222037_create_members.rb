class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :phone_number
      t.string :address

      t.timestamps
    end
  end
end
