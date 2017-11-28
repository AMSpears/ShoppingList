class Item < ApplicationRecord
  has_many :stacks, dependent: :destroy
  has_many :lists, through: :stacks
  belongs_to :user
end
