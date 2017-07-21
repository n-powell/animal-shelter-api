class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.string :animal_type, null: false
      t.integer :adoption_fee
      t.integer :age
      t.string :sex
      t.integer :weight
      t.boolean :available, null: false, default: true

      t.timestamps
    end
  end
end
