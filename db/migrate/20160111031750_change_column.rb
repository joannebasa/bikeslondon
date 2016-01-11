class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :products, :price, :decimal, :precision => 10, :scale => 3
  end
end
