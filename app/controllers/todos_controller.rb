class TodosController < ApplicationController
  
  # def show
  #   set_todo
  #   render json: @todo
  # end

  def update
    set_todo

    @todo.update(todo_params)

  end  





  private
    
    def set_todo
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    end

    
    def todo_params
      params.permit(:isCompleted)
    end  
end
