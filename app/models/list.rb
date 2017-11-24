class List < ApplicationRecord
  has_many :stacks
  has_many :items, through: :stacks
  belongs_to :user
end
