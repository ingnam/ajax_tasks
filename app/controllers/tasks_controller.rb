class TasksController < ApplicationController
	def index
		@incomplete_tasks = Task.where(complete: false)
		@complete_tasks = Task.where(complete: true)
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		@task.save
		# respond to
		respond to do |format|
			format.html { redirect_to root_url }
			# no block passed to format.js because i want to render out template for this .i.e. create.js.erb 
			format.js
		end 
		
	end

	def update
		@task = Task.find(params[:id])
		@task.update_attributes(task_params)
		redirect_to root_path
	end

	def destroy
		Task.find(params[:id]).destroy
		redirect_to root_path
	end

	private
	def task_params
		params.require(:task).permit(:name, :complete)
	end
end
