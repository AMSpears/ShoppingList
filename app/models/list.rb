class List < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  has_many :items, dependent: :destroy
  belongs_to :user
end
