class QueriesController < ApplicationController

  def query_name
    user_name = params[:name]
    output_message = "Your name is #{user_name}.upcase"
    if user_name.starts_with?("A")
      output_message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render json: {message: output_message}
  end

  def url_params
    user_message = params[:my_message]
    render json: {message: "Your message is #{user_message}"}
  end

  def guess
    user_guess = params[:user_guess].to_i
    winning_number = 36
    if user_guess > winning_number
      output_message = "You guessed too high!"
    elsif user_guess < winning_number
      output_message = "You guessed too low!"
    else
      output_message = "You win!"
    end
    render json: {message: output_message}
  end


  def username_params
    username = params[:username]
    password = params[:password]
    right_username = "hugh"
    right_password = "swordfish"
    if username == right_username && password == right_password
      output_message = "Valid credentials"
    else
      output_message = "Invalid credentials"
    end
    render json: {message: output_message}  
  end
end