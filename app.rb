require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "Hello #{@user_name}!"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end
  
  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
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
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    if params[:operation] == "multiply"
    "#{@num1 * @num2}"
    elsif params[:operation] == "add"
    "#{@num1 + @num2}"
    elsif params[:operation] == "divide"
      "#{@num1 / @num2}"
    elsif params[:operation] == "subtract"
      "#{@num1 - @num2}"
    end
  end

end