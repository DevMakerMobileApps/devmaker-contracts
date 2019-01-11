DevmakerContracts::Engine.routes.draw do
  root to: "private_contracts#index", as: :private_contracts

  resources :contracts, controller: "private_contracts", except: [:show]
  get ":slug" => "public_contracts#show", as: :show_contract
end
