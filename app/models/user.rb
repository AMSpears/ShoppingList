class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :lists, dependent: :destroy

  has_and_belongs_to_many :friendships,
  class_name: "User",
  join_table:  :friendships,
  foreign_key: :user_id,
  association_foreign_key: :friend_user_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
