class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    flash[:notice] = "Your cocktail has been created"
  end

  private
    def cocktail_params
      params.require(:cocktail).permit(:name, :description)
    end

end
