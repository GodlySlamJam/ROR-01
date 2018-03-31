class Dungeons < ActiveRecord::Migration[5.1]
  def change
  create_table :raids do |t|
    t.string :username
    t.string :id
    t.string :dungeon
    t.float :difficulty
    t.integer :played
    t.integer :success
  end
end
