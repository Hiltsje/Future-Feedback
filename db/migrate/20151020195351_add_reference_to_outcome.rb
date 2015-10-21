class AddReferenceToOutcome < ActiveRecord::Migration
  def change
    remove_column :outcomes, :decision_id, :integer
    add_reference :outcomes, :decision, index: true, foreign_key: true
  end
end
