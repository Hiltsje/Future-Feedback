class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.text :actual
      t.string :strength
      t.string :weakness
      t.integer :decision_id

      t.timestamps null: false
    end
  end
end
