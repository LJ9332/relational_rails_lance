class CreateVehicleMakes < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicle_makes do |t|
      t.string :name
      t.boolean :ev
      t.integer :year_established

      t.timestamps
    end
  end
end
