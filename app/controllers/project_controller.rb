class ProjectController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects
  end

end
