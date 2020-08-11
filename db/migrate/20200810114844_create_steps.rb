class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.datetime :date
      t.integer :steps

      t.timestamps
    end
  end
end
