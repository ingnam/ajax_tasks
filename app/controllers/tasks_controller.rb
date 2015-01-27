class TasksController < ApplicationController
	def index
		@incomplete_tasks = Task.where(complete: false)
		@complete_tasks = Task.where(complete: true)
	end

	def new
		@task = Task.new
	end

	def create
		
	end

	private
	def task_params
		
	end
end
