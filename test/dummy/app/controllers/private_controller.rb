class PrivateController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "123456"

  def index
  end
end
