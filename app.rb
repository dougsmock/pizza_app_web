require 'sinatra'
require_relative 'zcode2.rb'

enable :sessions

get '/' do
  session.clear
  puts "#{params} is params in get '/' do"
  type = session[:type] || type()
  puts "#{type} is type in get '/' do"
  size = session[:size] || size()
  crust = session[:crust] || crust()
  toppings = session[:toppings] || toppings()
  regular_price = session[:regular_price] || regular_price()
  superstar_price = session[:superstar_price] || superstar_price()

  erb :pizza_page1, locals:{type: type, size: size, crust: crust, toppings: toppings, regular_price: regular_price, superstar_price: superstar_price}
end

post '/pizza' do
  puts "#{params} is params in post '/pizza' do"
  session[:toppings] = params[:toppings]
  session[:regular_price] = params[:regular_price]
  session[:superstar_price] = params[:superstar_price]
  session[:toppings_price] = params[:toppings_price]
  session[:crust] = params[:crust]
  session[:type] = params[:type]
  session[:size] = params[:size]

  redirect '/'
end
