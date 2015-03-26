class ProvidersController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  
  def index
    @providers = Provider.all
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      flash[:notice] = "The provider was added"
      redirect_to providers_path(@provider)
    else
      render :new
    end
  end

  def show
    @provider = Provider.find(params[:id])
  end

private
  def provider_params
    params.require(:provider).permit(:name, :phone, :tin)
  end
end
