class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :name
      t.float :donation

      t.timestamps
    end
  end
end
