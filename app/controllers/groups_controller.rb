class GroupsController < ApplicationController
  def index
    @groups = Group.all
    render :groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
      flash[:notice] = "Successfully saved."
    else
      render :new
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
