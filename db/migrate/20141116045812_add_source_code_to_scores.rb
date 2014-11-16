class AddSourceCodeToScores < ActiveRecord::Migration
  def change
    add_column :scores, :source_code, :text
  end
end
