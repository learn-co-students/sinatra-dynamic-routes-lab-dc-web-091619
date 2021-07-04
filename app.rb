require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    squared = params[:number].to_i**2
    squared.to_s
  end

  get '/say/:number/:phrase' do
      solution = ''
      params[:number].to_i.times do 
     solution += params[:phrase]
    end
    solution
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
  
      answer = 'Unable to perform this operation'
  
      case params[:operation]
      when 'add'
        answer = (num1 + num2).to_s
      when 'subtract'
        answer = (num1 - num2).to_s
      when 'multiply'
        answer = (num1 * num2).to_s
      when 'divide'
        answer = (num1 / num2).to_s
      end
    end
  

end