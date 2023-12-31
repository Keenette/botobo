class ExercicesController < ApplicationController
  before_action :set_exercice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @exercices = policy_scope(Exercice)
    authorize @exercices
  end

  def show
    @exercice = Exercice.find(params[:id])
  end

  def new
    @exercice = Exercice.new
    authorize @exercice
  end

  def create
    @exercice = Exercice.new(exercice_params)
    authorize @exercice
    if @exercice.save
      flash[:notice] = "Le nouvel exercice a été créé"
      redirect_to exercice_path(@exercice)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @exercice.update(exercice_params)
    flash[:notice] = "L'exercice a été modifié"
    redirect_to exercice_path(@exercice)
  end

  def destroy
    @exercice.destroy
    flash[:notice] = "L'exercice a été supprimé"
    redirect_to exercices_path, status: :see_other
  end

  private

  def set_exercice
    @exercice = Exercice.find(params[:id])
    authorize @exercice
  end

  def exercice_params
    params.require(:exercice).permit(:name, :description, :difficulty_level, :duration, :photo)
  end
end
