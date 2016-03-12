class Skill < ActiveRecord::Base
has_many :job_skills
belongs_to :user
end