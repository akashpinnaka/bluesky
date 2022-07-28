class GroupsController < ApplicationController
  def new
  end

  def create
    # byebug
    @load = Load.find(params[:load_id])
    @new_group = @load.groups.new(jump_discipline: params[:discipline_name])
    if @new_group.save
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Can't create a new group."
    end
  end

  def edit
  end

  def destroy
    @group = Group.find(params[:id])
    if @group.destroy
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Can't delete the group."
    end
  end
end
