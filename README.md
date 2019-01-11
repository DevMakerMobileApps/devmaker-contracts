# DevmakerContracts
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'devmaker_contracts'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install devmaker_contracts
```

## Configuring

add a `config/initialazers/devmaker_contracts.rb` with:
```ruby
  # the private controller used to edit the contracts
  DevmakerContracts.private_controller =  "AdminController"

  # the public controller used to display the contracts (defaults to ApplicationController)
  DevmakerContracts.private_controller =  "PublicController"
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
