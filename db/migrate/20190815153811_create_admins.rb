class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :wday
      t.integer :start
      t.integer :end

      t.timestamps
    end
  end
end
