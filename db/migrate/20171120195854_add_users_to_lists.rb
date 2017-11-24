class AddUsersToLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :lists, :user, foreign_key: true
  end
end
