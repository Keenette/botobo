class ExercicesController < ApplicationController
  before_action :set_exercice, only: [:show, :edit, :update, :destroy]
  def index
    @exercices = Exercice.all
  end

  def show
  end

  def new
    @exercice = Exercice.new
  end

  def create
    @exercice = Exercice.new(exercice_params)
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
  end

  def exercice_params
    params.require(:exercice).permit(:name, :description, :category, :difficulty_level, :duration, :photo, :video_url)
  end
end
