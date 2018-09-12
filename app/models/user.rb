class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_tasks
  has_many :tasks, through: :user_tasks
  has_many :projects

  #FIXME I am considering using projects_users join table, but I don't want to rush
  #FIXME I am considering adding teams
  #FIXME I want to get a polymorphic comments thing going. I need to figure out if I want to use acts-as-commentable or by hand
end
