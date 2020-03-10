class CreateBackpackers < ActiveRecord::Migration[5.2]
  def change
    create_table :backpackers do |t|
      t.string :name
      t.string :lastname
      t.string :nationality
      t.string :age
      t.string :email
      t.string :profession
      t.string :phone
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
