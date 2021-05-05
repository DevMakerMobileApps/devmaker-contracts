# DevmakerContracts
Rails Engine to add a private contracts CRUD and a public display of each contract.

Specially usefull for projects that have a custom **Terms of Service** and **Privacy Policies** contracts displayed in a webview inside the mobile apps

## Usage
### Install:
1. Add this line to your application's Gemfile:
    ```ruby
    gem "devmaker_contracts", github: 'DevMakerMobileApps/devmaker-contracts'
    ```
1. And then execute:
    ```bash
    $ bundle
    ```

### Configure:
1. Add the Summernote CSS/JS to your layout:
    ```
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
    ```
1. Create a `config/initializers/devmaker_contracts.rb` config file with:
    ```ruby
      # Controll the access to edit contracts. Should be the controller that restrict access.
      DevmakerContracts.private_controller =  "AdminController"

      # The public controller used to only display the contracts (defaults to ApplicationController)
      DevmakerContracts.public_controller =  "PublicController"
    ```

1. Mount the engine in your `config/routes.rb`:
    ```ruby
    mount DevmakerContracts::Engine => "/contracts", as: :contracts
    ```

1. Copy and run the migrations:
    ```bash
    bin/rails devmaker_contracts:install:migrations
    bin/rails db:migrate
    ```

### Use:

>:warning: The Engine pages will share the same `private_controller` template (with menu and headers) from your app. So you need to make sure every **Rails route variable** shared from your app to this engine is prefixed with `main_app.your_route_path`.
In practice, you need to change partials like `menu.html.rb` and `header.html.rb` to replace variables from `dashboard_path` to `main_app.dashboard_path`.


1. Point this gem path in your menu:
    ```erb
    <li class="sidenav-item<%= current_page?(main_app.contracts_path) ? ' active' : '' %>">
      <%= link_to main_app.contracts_path, class: "sidenav-link" do %>
        <i class="sidenav-icon fas fa-file-contract"></i>
        <div>Contratos</div>
      <% end %>
    </li>
    ```

1. DONE! You have new a private CRUD of contracts. You can create a new contract, assign a URL and paste the content directly from WORD:

    ![new_contract_form](docs/imgs/new_contract_form.png)

1. Every contract will have a public display url using the contract URL without any layout: For example [https://your_server.com/contracts/tos](http://cartax-staging.herokuapp.com/contracts/tos)

1. [Example commit](https://gitlab.com/devmaker-mobile-apps/rails/cartax/commit/74d8c921c809368323a7c83177195eb96d956ac0)
