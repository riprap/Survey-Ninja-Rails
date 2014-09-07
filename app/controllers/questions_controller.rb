class QuestionsController < ApplicationController
	before_filter :set_survey

	def index
	end
	
	def new
		@question = @survey.questions.new
		@question_path = survey_questions_path(@survey)
	end

	def create
		@question = @survey.questions.create(question_params)
		
		if @question.save 
			redirect_to @survey
		else
			render 'new'
		end
	end

	def edit
		@question = Question.find(params['id'])
		@question_path = survey_questions_path(@survey, @question)
	end

	def update
		@question = Question.find(params[:id])

		if @question.update(question_params)
			redirect_to @survey
		else
			render 'edit'
		end
	end

	private
		def set_survey
			@survey = Survey.find(params['survey_id'])
		end

		def question_params
			params.require(:question).permit(:text)
		end
end