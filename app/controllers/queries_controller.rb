class QueriesController < ApplicationController
  def name_query
    name = params[:name]
    render json: {message: "#{name}".upcase}
  end
end
