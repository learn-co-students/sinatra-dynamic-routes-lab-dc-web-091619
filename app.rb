require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @reversename = @name.reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @number = params[:number]
    @square = @number.to_i**2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get "/:operation/:number1/:number2" do

    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      @final = @number1 + @number2
      "#{@final}"

    when "subtract"
      @final = @number1 - @number2
      "#{@final}"

    when "multiply"
      @final = @number1 * @number2
      "#{@final}"

    when "divide"
      @final = @number1 / @number2
      "#{@final}"

    end
  end

end