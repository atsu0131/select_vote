class CreateVoteActions < ActiveRecord::Migration[5.1]
  def change
    create_table :vote_actions do |t|
      t.references :voter, foreign_key: true
      t.references :politician, foreign_key: true

      t.timestamps
    end
  end
end
