class RefundsController < ApplicationController
  def index
    @refunds = Refund.all
  end

  def new
    @refund = Refund.new
    @providers = Provider.all
    @claimants = Claimant.all
  end

  def create
    @refund = Refund.new(refund_params)
    if @refund.save
      flash[:notice] = "The refund was successfully added"
      redirect_to refunds_path
    else
      render :new
    end
  end

  def show
    @refund = Refund.find(params[:id])
  end

private
  def refund_params
    params.require(:refund).permit(:provider_id, :claimant_id, :amount_requested, :reason)
  end
end
