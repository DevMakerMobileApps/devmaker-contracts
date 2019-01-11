DevmakerContracts::Engine.routes.draw do
  root to: "private_contracts#index", as: :private_contracts

  resource :contracts, controller: "private_contracts", except: [:show]
  # get "private_contracts" => "private_contracts#index", as: :contracts
  # get "private_contracts/new" => "private_contracts#new", as: :new_contracts
end
