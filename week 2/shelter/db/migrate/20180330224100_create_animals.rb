class CreateAnimals < ActiveRecord::Migration[5.1]
  def change

    create_table :animals do |t|
      t.string :name
      t.string :spieces
      t.string :age
      t.string :smell
      t.string :num_legs
      t.string :fave_snack
      t.string :blurb
      t.integer :owner_id
    end


  end
end
