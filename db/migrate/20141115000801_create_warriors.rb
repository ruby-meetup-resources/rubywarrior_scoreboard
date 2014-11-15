class CreateWarriors < ActiveRecord::Migration
  def change
    create_table :warriors do |t|
      t.string :name

      t.timestamps
    end
  end
end
