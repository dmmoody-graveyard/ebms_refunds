class ProvidersController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  
  def index
    @providers = Provider.all
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      respond_to do |format|
        format.html { redirect_to providers_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
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
