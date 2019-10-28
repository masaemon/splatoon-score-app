class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :rule
      t.string :stage
      t.string :weapon
      t.integer :power
      t.string :buttle

      t.timestamps
    end
  end
end
