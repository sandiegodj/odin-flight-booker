class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :flights, :start, :date
  end
end
