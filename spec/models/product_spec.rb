require 'rails_helper'

describe Product do
  
  describe "average_rating" do
    
    context "when the product has comments" do
      before do
        @product = Product.create(:name => "ball")
        @user = User.create(:email => "123@123.com", :password => "1234567" )
        @product.comments.create(:rating => 1, :user => @user, :body => "hello")
        @product.comments.create(:rating => 3, :user => @user, :body => "good")
        @product.comments.create(:rating => 5, :user => @user, :body => "night")
      end

      it 'returns the average rating of all comments' do
        expect(@product.average_rating).to eq 3
      end
    end

    
    before do
      @product = Product.create!(name: "race bike")
    end
  end    
  
end