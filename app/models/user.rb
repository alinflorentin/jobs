class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # before_action :authenticate_user!
  has_and_belongs_to_many :skills
  has_many :created_jobs, class_name: "Job", foreign_key: :owner_id
  has_many :accepted_jobs, class_name: "Job", foreign_key: :hired_user_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         # attr_accessible :email, :password, :password_confirmation
end

