class AddValueToSensorsVariables < ActiveRecord::Migration[5.1]
  def change
    add_column :sensors_variables, :value, :float
  end
end
