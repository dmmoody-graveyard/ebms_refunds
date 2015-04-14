class GroupsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      respond_to do |format|
        format.html { redirect_to groups_path }
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
    @group = Group.find(params[:id])
    @certs = @group.certs.all
  end

private
  def group_params
    params.require(:group).permit(:name, :group_number)
  end
end
