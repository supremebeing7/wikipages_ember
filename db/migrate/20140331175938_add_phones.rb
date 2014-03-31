class AddPhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :number
      t.integer :contact_id
    end
  end
end
