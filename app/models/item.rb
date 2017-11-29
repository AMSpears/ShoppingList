class Item < ApplicationRecord
  belongs_to :list
  validates :category, :quantity, :note, :name, presence: true, length: { maximum: 50 }
end
