class CreateReferees < ActiveRecord::Migration[5.2]
  def change
    create_table :referees do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.date :birthday
      t.integer :country

      t.timestamps
    end
  end
end
