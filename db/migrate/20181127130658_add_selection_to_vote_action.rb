class AddSelectionToVoteAction < ActiveRecord::Migration[5.1]
  def change
    add_reference :vote_actions, :selection, foreign_key: true
  end
end
