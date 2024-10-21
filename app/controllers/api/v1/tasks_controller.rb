class Api::V1::TasksController < ApplicationController
    def index
      render json: {
        example_key: {
          example_nested_key: "Did it though?!"
        },
        example_array_key: [
          "Item 1", "Item 2"
        ]
      }
    end

    def index
        render json: Task.all
    end

    def show 
        task = Task.find(params[:id])
        render json: TaskSerializer.format_task(task)
    end

    def create
        render json: Task.create(task_params)
    end

    def update
        render json: Task.update(params[:id], task_params)
    end

    def destroy
        render json: Task.delete(params[:id])
        render json: TaskSerializer.format_tasks(tasks)
    end

    private

    def task_params
        params.require(:task).permit(:title, :description)
    end
end