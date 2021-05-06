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
end
