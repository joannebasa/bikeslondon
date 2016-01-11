class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :products, :price , :price
  end
end
