Rails.application.routes.draw do
  get "/guitars" => "guitars#index"
end
