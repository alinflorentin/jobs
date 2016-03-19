class Job < ActiveRecord::Base
	has_and_belongs_to_many :skills
	belongs_to :owner_user, class_name: "User"
	belongs_to :hired_user, class_name: "User"
end
