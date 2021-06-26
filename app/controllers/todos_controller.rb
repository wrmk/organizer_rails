class TodosController < ApplicationController
  
  # def show
  #   set_todo
  #   render json: @todo
  # end

  def update
    set_todo

    @todo.update(article_params)

  end  





  private
    
    def set_todo
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    end

    
    def todo_params
      params.require(:todo).permit(:isCompleted)
    end  
end
