class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  before_action :set_van, only: [:show, :edit, :update, :destroy]

  def index
    @vans = Van.all
  end

  def show
  end

  def new
    @van = Van.new
  end

  def edit
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    if @van.save!
      redirect_to @van, notice: 'Ton van a bien été enregistré!'
    else
      render :new
    end
  end

  def update
    if @van.update(van_params)
      redirect_to @van, notice: 'Ton van a bien été modifié!'
    else
      render :edit
    end
  end

  def destroy
    @van.destroy
    redirect_to vans_url, notice: 'Ton van a bien été supprimé!'# faire attention au niveau du delete s'il existe un booking.
  end

  private

  def set_van
    @van = Van.find(params[:id])
  end

  def van_params
    params.require(:van).permit(:name, :description, :seat, :location, :date, :price, :image_url)#pas de besoin d'ajouter un user_id
    #il est ajouté automatiquement dans la méthode create.
  end
end
