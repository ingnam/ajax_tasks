class ArticlesController < ApplicationController
	# currently this action doesn't respond a javascript, so lets make template 'index.js.erb'
	def index
		@articles = Article.paginate(page: params[:page])	
	end
end
