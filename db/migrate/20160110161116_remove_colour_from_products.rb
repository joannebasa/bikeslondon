class RemoveColourFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :colour, :string
  end
end
