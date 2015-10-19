class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.string :title
      t.text :forecast
      t.date :review_date

      t.timestamps null: false
    end
  end
end
