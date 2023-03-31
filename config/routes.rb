Rails.application.routes.draw do
  get "/guitars" => "guitars#index"
  get "/guitars/:id" => "guitars#show"
  post "/guitars" => "guitars#create"
  patch "/guitars/:id" => "guitars#update"
end
