class DosesController < ApplicationController
  before_action :set_cocktail
  def new
  end

  def create
    dose = Dose.new(params_dose)
    dose.cocktail = @cocktail
    dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    dose = Dose.find(params[:id])
    dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def params_dose
    params.require(:dose).permit(:content, :ingredient)
  end
end
