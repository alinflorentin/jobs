class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # before_action :authenticate_user!
  has_many :user_skills
  has_many :jobs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         # attr_accessible :email, :password, :password_confirmation
end
