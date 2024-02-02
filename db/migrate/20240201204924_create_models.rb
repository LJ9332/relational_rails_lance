class CreateModels < ActiveRecord::Migration[7.1]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :year_made
      t.boolean :naturally_asprirated
      t.boolean :forced_induction
      t.integer :horsepower
      t.integer :mileage
      t.references :vehicle_make, null: false, foreign_key: true

      t.timestamps
    end
  end
end
