class LanguagesController < ApplicationController
  def show
    @language = Language.find(params[:id])
  end

private

  def languages_params
    params.require(:language).permit(:name, :photo)
  end
end
