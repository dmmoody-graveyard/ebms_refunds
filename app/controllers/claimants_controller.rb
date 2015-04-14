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
      respond_to do |format|
        format.html { redirect_to cert_path(@claimant.cert) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

private
  def claimant_params
    params.require(:claimant).permit(:claimant_number, :first_name, :last_name)
  end
end
