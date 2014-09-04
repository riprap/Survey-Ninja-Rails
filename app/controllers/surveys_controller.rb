class SurveysController < ApplicationController
	def index
		@surveys = Survey.all
	end
	
	def new
	end

	def create
		@survey = Survey.new(article_params) 
		
		@survey.save
		redirect_to @survey
	end

	def show
		@survey = Survey.find(params[:id])
	end

	private
		def article_params
			params.require(:survey).permit(:title, :description)
		end
end
