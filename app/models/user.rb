class User < ApplicationRecord
  has_many :likes
  has_many :liked_dogs, through: :likes, source: :dog
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
