class Skill < ActiveRecord::Base
has_many :user_skills
has_many :job_skills
end