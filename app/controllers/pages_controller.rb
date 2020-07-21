class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @project = Project.all
    @languages = Language.all
  end

private

  def project_params
    params.require(:project).permit(:title, :description, :url, :photo)
  end

  def language_params
    params.require(:language).permit(:name, :photo)
  end
end
