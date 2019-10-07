require_relative 'config/environment'
require "pry"
class App < Sinatra::Base

  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i**2
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    @string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do 
      @string += @phrase
    end
    @string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do

    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      @total = @number1 + @number2
    elsif @operation == "subtract"
      @total = @number1 - @number2
    elsif @operation == "multiply"
      @total = @number1 * @number2
    elsif @operation == "divide"
      @total = @number1 / @number2
    end
    @total.to_s
    #change to string because it won't print out integers.
  end

end