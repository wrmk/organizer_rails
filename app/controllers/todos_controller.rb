class TodosController < ApplicationController
  
  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
  end  

  def create
    @project = Project.all
    if @project.where(project_params).exists?
      @project=Project.find_by project_params
        if !@project.todos.where(text: todo_params[:text]).exists?
          @project.todos.create(todo_params)
          answer
        end
    else
      @project = Project.create(project_params)
      @project.todos.create(todo_params)
      answer
    end
  end

  private

    def answer
      render json: Project.includes(:todos).where(todos: {text: todo_params[:text]},projects: {title: project_params[:title]})
    end
    def todo_params
      params.permit(:text, :isCompleted).each_value{|value| value.try(:strip!)}
    end 
    def project_params
      params.permit(:title).each_value{|value| value.try(:strip!)}
    end 

end
