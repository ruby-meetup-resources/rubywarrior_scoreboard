class AddTowerToScore < ActiveRecord::Migration
  def change
    add_column :scores, :tower, :string, null: false, default: 'beginner'
  end
end
