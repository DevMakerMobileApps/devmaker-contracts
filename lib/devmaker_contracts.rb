require "devmaker_contracts/engine"

module DevmakerContracts
  mattr_accessor :public_controller
  def self.public_controller
    @@public_controller.constantize
  end

  mattr_accessor :private_controller
  def self.private_controller
    (@@private_controller || "ApplicationController").constantize
  end
end
