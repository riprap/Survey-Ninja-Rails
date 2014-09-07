class SurveysController < ApplicationController
	def index
		@surveys = Survey.all
	end

	def new
		@survey = Survey.new
	end

	def create
		@survey = Survey.new(survey_params) 
		
		if @survey.save
			redirect_to @survey
		else
			render 'new'
		end
	end

	def show
		@survey = Survey.find(params[:id])
	end

	def edit
		@survey = Survey.find(params[:id])
		@question_types_array = QuestionType.all.map {|question_type| [question_type.name, question_type.id]}
	end

	def update
		@survey = Survey.find(params[:id])

		if @survey.update(article_params)
			redirect_to @survey
		else
			render 'edit'
		end
	end

	def destroy
		@survey = Survey.find(params[:id])
		@survey.destroy

		redirect_to surveys_path
	end

	private
		def survey_params
			params.require(:survey).permit(:title, :description)
		end
end
