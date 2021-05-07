Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/query_name" => "queries#query_name"
  get "/query_guess" => "queries#query_guess"
  get "/query_guess" => "queries#guess"

  get "/url_params/:my_message" => "queries#url_params"
  get "/url_guess/:user_guess" => "queries#guess"
  post "/body_params" => "queries#guess"
  post "/username_params" => "queries#username_params"
end