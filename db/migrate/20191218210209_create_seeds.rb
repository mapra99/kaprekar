class CreateSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seeds do |t|
      t.bigint :value, null: false, unique: true

      t.timestamps
    end
  end
end
