require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number ** 2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    final = ""
       @n.times do
        final << "#{@phrase} "
      end
     final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
   sentence = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
     case @operation
       when "add"
       "#{@num1 + @num2}"
       when "subtract"
        "#{@num1 - @num2}"
       when "multiply"
        "#{@num1 * @num2}"
       when "divide"
        "#{@num1 / @num2}"
      end
  end
end