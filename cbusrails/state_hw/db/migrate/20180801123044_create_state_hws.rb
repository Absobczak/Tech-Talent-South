class CreateStateHws < ActiveRecord::Migration[5.2]
  def change
    create_table :state_hws do |t|
      t.string :name
      t.string :capital
      t.integer :population
      t.integer :area

      t.timestamps
    end
  end
end
