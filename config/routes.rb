Rails.application.routes.draw do
  get "/guitars" => "guitars#index"
  get "/guitars/:id" => "guitars#show"
end
