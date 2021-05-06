class QueriesController < ApplicationController
  def query_name
    user_name = params[:name].upcase
    output_message = "Your name is #{user_name}"
    if user_name.starts_with?("A")
      output_message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render json: {message: output_message}
  end

  def guess_number_query
    user_guess = params[:user_guess].to_i
    winning number = 36
    if user_guess > winning number
      output = "Too high!"
    elsif user_guess < winning number
      output = "Too low!"
    else
      output = "You win!"
    end
    render json: {message: output_message}
  end
end
