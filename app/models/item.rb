class Item < ApplicationRecord
  belongs_to :list
  validates :category, :quantity, :note, :name, presence: true, length: { maximum: 50 } # Maybe make note optional?
end
# Nice job on using validations!
# https://git.generalassemb.ly/ga-wdi-lessons/rails-sessions-flash-validations-errors/blob/master/validations.md
# Look back on the above lesson to see how to implement correct messages when one of these fails.  You don't let a user create an invalid item, which is awesome - but you should let them know why it was invalid.
