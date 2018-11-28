class ArticlesController < ApplicationController

	def index
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end

	end

	private

	def article_params
		params.require(:article).permite(:title, :content)
	end

	def set_params
		
	end


end
