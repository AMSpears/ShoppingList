class List < ApplicationRecord
  has_many :stacks, dependent: :destroy
  has_many :items, through: :stacks
  belongs_to :user
end
