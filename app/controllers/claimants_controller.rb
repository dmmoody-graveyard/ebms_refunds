class ClaimantsController < ApplicationController

  def index

  end

  def show
    @claimant = Claimant.find(params[:id])
  end

  def new
    @cert = Cert.find(params[:cert_id])
    @claimant = @cert.claimants.new
  end

  def create
    @cert = Cert.find(params[:cert_id])
    @claimant = @cert.claimants.new(claimant_params)
    if @claimant.save
      flash[:notice] = "Claimant was successfully added"
      redirect_to cert_path(@claimant.cert)
    else
      render :new
    end
  end

private
  def claimant_params
    params.require(:claimant).permit(:claimant_number, :first_name, :last_name)
  end
end
