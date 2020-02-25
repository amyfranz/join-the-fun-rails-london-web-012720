class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.references :passenger, foreign_key: true
      t.references :taxi, foreign_key: true
      t.timestamps null: false
    end
  end
end
