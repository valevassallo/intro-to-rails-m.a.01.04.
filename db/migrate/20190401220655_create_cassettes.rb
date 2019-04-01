class CreateCassettes < ActiveRecord::Migration[5.2]
  def change
    create_table :cassettes do |t|
      t.references :movie, foreign_key: true
      t.string :format

      t.timestamps
    end
  end
end
