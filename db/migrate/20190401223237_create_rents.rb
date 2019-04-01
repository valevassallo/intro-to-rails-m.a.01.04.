class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.references :cassette, foreign_key: true
      t.references :member, foreign_key: true
      t.date :start_rent
      t.date :end_rent

      t.timestamps
    end
  end
end
