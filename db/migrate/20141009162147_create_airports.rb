class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :airport_code

      t.timestamps
    end
  end
end
