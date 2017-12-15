class User < ApplicationRecord
  attr_accessor :login
  has_many :lists, dependent: :destroy

  has_and_belongs_to_many :friendships,
  class_name: "User",
  join_table:  :friendships,
  foreign_key: :user_id,
  association_foreign_key: :friend_user_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
# The friendships feature you tried to implement is really tough.  Since this ends up not being used in your currently deployed app, it'd be a good idea to take that out and put it in a feature branch.  The master branch should reflect the deployed App.  However, I'd encourage you to come back to this idea!
