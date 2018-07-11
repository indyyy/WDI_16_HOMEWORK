require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'stock_quote'


get '/' do
     'welcome to my home page</h1> <a href="/about">about</a>'
end


get '/about' do
    return '<p> goodbye to Yahoo Finance </p>'
end

get '/stock' do
  stock_ticker =  params['ticker'] 
  p ("#{stock_ticker}") 
  stock_close = StockQuote::Stock.quote("#{stock_ticker}").close
  stock_sym = StockQuote::Stock.quote("#{stock_ticker}").symbol
  p stock_close
  p stock_sym
  @stock_detail = "Ticker: #{stock_sym} Close: #{stock_close}"
  erb(:index)
end










