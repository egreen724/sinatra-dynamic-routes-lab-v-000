require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get "/reversename/:name" do 
    @username = params[:name]
    "#{@username.reverse!}"
  end 
  
  get "/square/:number" do 
    @number = params[:number].to_i
    "#{@number * @number}"
  end
  
  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
      @number.times do 
        "#{@phrase}"
    end 
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word_1 = params[:word1]
end