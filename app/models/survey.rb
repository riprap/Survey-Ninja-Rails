class Survey < ActiveRecord::Base
	has_many :questions
	belongs_to :user
	#validates_associated :questions
	
	validates :title, presence: true,
					  length: { in: 5..200}
	validates :description, presence: true,
							length: { in: 20..200 }
end
