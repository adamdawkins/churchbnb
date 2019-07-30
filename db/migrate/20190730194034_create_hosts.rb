class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :password_digest
      t.string :availability

      t.timestamps
    end
  end
end
