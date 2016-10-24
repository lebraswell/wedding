class CreateRsvps < ActiveRecord::Migration[5.0]
  def change
    create_table :rsvps do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :name
      t.boolean :coming

      t.timestamps
    end
  end
end
