class HomeController < ApplicationController
  def index
  end

  def dashboard
    @current_user_loads = current_user.loads
    @new_group = Group.new
    @disciplines = Discipline.all
  end

  # def get_disciplines
  #   # byebug
  #   @disciplines = Discipline.all
  #   respond_to do |format|
  #     # format.json { render json: @disciplines, status: :ok }
  #     # format.html
  #     format.json do
  #       render json: @disciplines
  #     end
  #     format.html do
  #       render :index
  #     end
  #   end
  # end

end
