class VansController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_van, only: [:show, :edit, :update, :destroy]

  def index
    @vans = policy_scope(Van)
    @vans = Van.near(params[:location])
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
    authorize @van
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
    redirect_to vans_url, notice: 'Ton van a bien été supprimé!' # faire attention au niveau du delete s'il existe un booking.
  end

  private

  def set_van
    @van = Van.find(params[:id])
    authorize @van
  end

  def van_params
    params.require(:van).permit(:name, :category, :description, :seat, :location, :date, :price, :image_url) # pas de besoin d'ajouter un user_id
    # il est ajoute automatiquement dans la methode create.
  end
end
