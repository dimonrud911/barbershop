class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.date :day
      t.time :hour
      t.string :phone

      t.timestamps
    end
  end
end
