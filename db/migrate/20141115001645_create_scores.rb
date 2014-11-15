class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :warrior, null: false
      t.integer :level_number, null: false
      t.integer :level_score, null: false
      t.integer :time_bonus, null: false
      t.integer :clear_bonus
      t.string :total_score

      t.timestamps
    end
  end
end
