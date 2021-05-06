Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/name" => "queries#name_query"
  get "/number" => "queries#guess_number_query"
end
