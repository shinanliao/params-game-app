class QueriesController < ApplicationController
  def name_query
    name = params[:name]
    render json: {message: "#{name}".upcase}
  end

  def first_letter_query
    name = params[:name]
    if name[0] == "a"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    end
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
