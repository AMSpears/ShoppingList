class Stack < ApplicationRecord
  belongs_to :list
  belongs_to :item
  belongs_to :user
end
