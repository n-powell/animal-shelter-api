class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.integer :adoption_fee
      t.integer :age
      t.string :sex
      t.integer :weight
      t.boolean :available

      t.timestamps
    end
  end
end
