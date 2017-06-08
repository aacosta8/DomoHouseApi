class CreateJoinTableSensorVariable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sensors, :variables do |t|
      # t.index [:sensor_id, :variable_id]
      # t.index [:variable_id, :sensor_id]
    end
  end
end
