class CreateSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seeds do |t|
      t.bigint :value

      t.timestamps
    end
  end
end
