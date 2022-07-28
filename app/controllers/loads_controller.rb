class LoadsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @new_load = current_user.loads.new
    if @new_load.save
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = "Can't add another load."
    end
  end

  def edit
  end
end
