class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @project = Project.all
    @language = Language.all
  end

private

  def project_params
    params.require(:project).permit(:title, :description, :url, :photo)
  end
end
