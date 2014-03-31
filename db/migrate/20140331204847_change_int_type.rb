class ChangeIntType < ActiveRecord::Migration
  def change
    change_column :phones, :number, :bigint
  end
end
