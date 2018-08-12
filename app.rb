require 'sinatra'
require_relative 'zcode2.rb'

enable :sessions

get '/' do
  # session.clear
  # puts "#{params} is params in get '/' do"
  # type = session[:type] || type()
  # puts "#{type} is type in get '/' do"
  # size = session[:size] || size()
  # crust = session[:crust] || crust()
  # toppings = session[:toppings] || toppings()
  # subtotal = session[:subtotal]
  #
  erb :pizza_page1
  # erb :pizza_page1, locals:{type: type, size: size, crust: crust, toppings: toppings}

end

# post '/pizza' do
#   puts "#{params} is params in post '/pizza' do"
#   session[:toppings] = params[:toppings]
#   session[:toppings_price] = params[:toppings_price]
#   session[:crust] = params[:crust]
#   session[:type] = params[:type]
#   session[:size] = params[:size]
#   toppings = session[:toppings] || toppings()
#   puts "in /pizza do session[:crust] is #{session[:crust]} session type is #{session[:type]} session size is #{session[:size]} and session size is #{session:[:toppings]}"
#   # session[:subtotal] = params[:subtotal]
#   redirect '/checkout'
# end


post '/pizza' do
  puts "#{params} is params in post '/pizza' do"
  session[:toppings1] = params[:toppings1]
  session[:toppings_price] = params[:toppings_price]
  session[:crust] = params[:crust]
  session[:type] = params[:type]
  session[:size] = params[:size]
  session[:subtotal] = pizza(params[:size], params[:type], params[:toppings1])
  p session

  # puts "in /pizza do session[:crust] is #{session[:crust]} session type is #{session[:type]} session size is #{session[:size]} session size is #{session:[:toppings]} and session size is #{session:[:subtotal]}"
  redirect '/checkout'
end

get '/checkout' do
  # session[:crust]
  erb :checkout, locals:{type: session[:type], size: session[:size], crust: session[:crust], toppings1: session[:toppings1], subtotal: session[:subtotal], sales_tax: session[:sales_tax], grand_total: session[:grand_total]}
end

post '/checkout' do
  puts "Hello World"
  puts "#{params} is params in post '/lastpage' do"
  session[:name] = params[:name]
  session[:address] = params[:address]
  session[:phone] = params[:phone]
  session[:grand_total] = params[:grand_total]
  session[:toppings1] = params[:toppings1]
  session[:crust] = params[:crust]
  session[:type] = params[:type]
  session[:size] = params[:size]
  p session
  redirect '/lastpage'
end

get '/lastpage' do
  erb :lastpage, locals:{name: session[:name], address: session[:address], phone: session[:phone], type: session[:type], size: session[:size], crust: session[:crust], toppings1: session[:toppings1], grand_total: session[:grand_total]}
end
