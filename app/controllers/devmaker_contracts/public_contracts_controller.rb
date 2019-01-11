module DevmakerContracts
  class PublicContractsController < DevmakerContracts.public_controller
    def show
      @contract = Contract.find_by slug: params[:slug]
      head(:not_found) unless @contract
      render :show, layout: false
    end
  end
end
