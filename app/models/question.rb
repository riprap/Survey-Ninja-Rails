class Question < ActiveRecord::Base
	belongs_to :survey
	has_one :question_type
	validates :text, presence: true,
					  length: { in: 5..30 }
end
