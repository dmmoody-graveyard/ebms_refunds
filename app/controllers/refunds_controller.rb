class RefundsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  
  def index
    @refunds = Refund.all
  end

  def new
    @refund = Refund.new
    @providers = Provider.find_by(tin: params[:provider])
    @provider = Provider.new
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

  def edit
    @refund = Refund.find(params[:id])
    @providers = Provider.all
    @claimants = Claimant.all 
  end

  def update
    @refund = Refund.find(params[:id])
    if @refund.update(refund_params)
      flash[:success] = "Refund updated successfully"
      redirect_to refunds_path
    else
      render :edit
    end
  end

private
  def refund_params
    params.require(:refund).permit(:provider_id, :claimant_id, :amount_requested, :reason)
  end
end
