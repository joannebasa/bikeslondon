class StaticPagesController < ApplicationController

 def index
 	@products = Product.all
 end

  def landing_page
  	@featured_product = Product.limit(3)
  end
end
