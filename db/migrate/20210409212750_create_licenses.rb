class CreateLicenses < ActiveRecord::Migration[6.1]
  def change
    create_table :licenses do |t|
      t.string :number
      t.string :state

      t.integer :driver_id

      t.timestamps
    end
  end
end
