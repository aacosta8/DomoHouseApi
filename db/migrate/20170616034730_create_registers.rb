class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.references :sensor, foreign_key: true
      t.references :variable, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end
