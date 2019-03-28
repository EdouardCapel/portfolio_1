class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :project_generator, :project_index]

  def home
  end

  def project_index

  end

  def project_generator
    all_project = Project.all
    render json: { project_generator: all_project }
  end
end
