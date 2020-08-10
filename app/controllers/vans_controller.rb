class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    if @van.save
      redirect_to van_path(@van)
    else
      render 'new'
    end
  end

  def van_params
    params.require(:van).permit(:description, :date, :price, :seat, :location, :image_url, :user)
  end
end
