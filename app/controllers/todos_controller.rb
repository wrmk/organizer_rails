class TodosController < ApplicationController
  
  def update

    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    @todo.update(todo_params)

  end  

  def create

    @project = Project.all
    if @project.where(project_params).exists?
      @project=Project.find_by project_params
      @project.todos.create(todo_params)
    else
      @project = Project.create(project_params)
      @project.todos.create(todo_params)
    end

  end



  private
        
    def todo_params
      params.permit(:text, :isCompleted)
    end 

    def project_params
      params.permit(:title)
    end 

end
