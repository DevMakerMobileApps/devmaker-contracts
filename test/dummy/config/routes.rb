Rails.application.routes.draw do
  mount DevmakerContracts::Engine => "/devmaker_contracts"

  get "/public" => "public#index"
  get "/private" => "private#index"
end
