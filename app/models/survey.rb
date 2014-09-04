class Survey < ActiveRecord::Base
	has_many :questions
	#validates_associated :questions
	
	validates :title, presence: true,
					  length: { in: 5..30 }
	validates :description, presence: true,
							length: { in: 20..200 }
end
