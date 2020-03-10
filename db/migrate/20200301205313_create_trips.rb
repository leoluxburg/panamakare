class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :date
      t.string :location
      t.text :description
      t.text :route
      t.string :budget
      t.text :budget_description
      t.text :donations
      t.text :workshop
      t.integer :adults
      t.integer :kids
      t.integer :grampas
      t.integer :avility

      t.timestamps
    end
  end
end
