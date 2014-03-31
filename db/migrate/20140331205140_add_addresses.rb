class AddAddresses < ActiveRecord::Migration
  def change

    create_table :addresses do |t|
      t.integer :contact_id
      t.string :address
    end
  end
end
