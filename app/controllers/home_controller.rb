class HomeController < ApplicationController
  def index
   # API key
   @api = StockQuote::Stock.new(api_key: 'pk_ab695f63b47e4c518b69eda8d0567b84')
   # Set up error handling if no value is entered
   if params[:ticker] == ""
      @no_value = "You must enter a stock market ticker symbol"
   elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock |
        @error = "Sorry, that is not a valid symbol"
      end
   end
  end

  def about
  end
  
end
