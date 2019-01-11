module DevmakerContracts
  class PrivateContractsController < DevmakerContracts.private_controller
    before_action :set_contract, only: [:show, :edit, :update, :destroy]

    def index
      @contracts = Contract.search_for(params[:q]).order(:id)
    end

    def new
      @contract = Contract.new
    end

    def create
      @contract = Contract.new(form_params)

      if @contract.save
        redirect_to contracts_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @contract.update(form_params)
        redirect_to contracts_path
      else
        render :edit
      end
    end

    def destroy
      @contract.destroy
      flash[:success] = "Contrato removido."
      redirect_to contracts_path
    end

    private

    def form_params
      params.require(:contract).permit([:name, :slug, :content_html])
    end

    def set_contract
      @contract = Contract.find(params[:id])
    end
  end
end
