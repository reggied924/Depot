class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @cart = current_cart
    @counter = increment_counter
    @message = "You have visited here #{@counter} times" if session[:counter] > 5 
  end
  
  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end
