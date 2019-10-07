require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    name.split(//).reverse.join
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num ** 2
    square.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    s_string = ""
    num.times do
      s_string += phrase
    end
    s_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = []
    i = 1
    5.times do
      words << params[:"word#{i}"]
      i += 1
    end
    words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if op == "add"
      (num1 + num2).to_s
    elsif op == "subtract"
      (num1 - num2).to_s
    elsif op == "multiply"
      (num1 * num2).to_s
    elsif op == "divide"
      (num1 / num2).to_s
    else "Operation required is not an option."
    end
  end

end