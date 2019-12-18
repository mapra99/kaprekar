class CreateKaprekardProcesses < ActiveRecord::Migration[6.0]
  def change
    create_table :kaprekard_processes do |t|
      t.integer :iteration, null: false
      t.bigint :value, null: false
      t.references :seed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
