class Product < ActiveRecord::Base
  has_many :orders
  has_many :comments
  validates :name, presence: true

  def average_rating
  	comments.average(:rating).to_f
  end

  def show
     @product = Product.find(params[:id])

     respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @product }
     end
   end

end
