require "pry"
class FlicksController < ApplicationController

  def index
    @flicks = Flick.all
    render :index
    # Code for listing all flicks goes here.
  end

  def new
    @flick = Flick.new
    render :new
    # Code for new flick form goes here.
  end

  def create
    @user = User.find(params[:user_id])
    @flick = @user.flicks.new(flick_params)
    binding.pry
    if @flick.save!
      flash[:notice] = "Flick successfully flicked"
      redirect_to user_flicks_path(current_user)
    else
      render :new
    end
  end

  def edit
    @flick = Flick.find(params[:id])
    render :edit
    # Code for edit flick form goes here.
  end

  def show
    @flick = Flick.find(params[:id])
    render :show
    # Code for showing a single flick goes here.
  end

  def update
    @flick = Flick.find(params[:id])
    if @flick.update(flick_params)
      redirect_to user_flicks_path
    else
      render :edit
    end
    # Code for updating an flick goes here.
  end

  def destroy
    @flick = Flick.find(params[:id])
    @flick.destroy
    redirect_to user_flicks_path
    # Code for deleting an flick goes here.
  end

  private
    def flick_params
      params.require(:flick).permit(:caption)
    end
end
