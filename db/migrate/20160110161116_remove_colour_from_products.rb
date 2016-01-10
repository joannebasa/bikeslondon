class RemoveColourFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :colour
  end
end
