class Item < ApplicationRecord
  has_many :stacks
  has_many :lists, through: :stacks
  belongs_to :user
end
