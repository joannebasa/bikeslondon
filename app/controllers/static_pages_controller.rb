class StaticPagesController < ApplicationController
  
  def index
  	 if params[:q]
      search_term = params[:q]
      @product = Product.where("name LIKE ?", "%#{search_term}%")
    else
      @product = Product.all
    end
  end

  def landing_page
  	@products = Product.limit(3)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
  
end
