$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "devmaker_contracts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = "devmaker_contracts"
  spec.version = DevmakerContracts::VERSION
  spec.authors = ["Rudiney Franceschi"]
  spec.email = ["rudi.atp@gmail.com"]
  spec.homepage = "http://www.devmaker.com.br"
  spec.summary = "Engine to add the contracts handling in DevMaker Rails projects"
  spec.description = "It adds a private admin CRUD of contracts and a public display of its HTML. Usefull for Terms of Services and Privacy Policies"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
          "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "<= 6.0"

  spec.add_development_dependency "sqlite3"
end
