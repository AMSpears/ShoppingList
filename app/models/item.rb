class Item < ApplicationRecord
  belongs_to :list
  validates :name, presence: true, length: { maximum: 50 }
end
