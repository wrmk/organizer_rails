class TodosController < ApplicationController
  def show
    set_todo
    render json: @todo
  end







  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todo_params
      params.require(:todo).permit(:text)
    end  
end
