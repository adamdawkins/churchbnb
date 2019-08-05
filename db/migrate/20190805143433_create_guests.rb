class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :desired_location
      t.text   :meeting_times
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
