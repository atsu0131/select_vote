class AddNicknameToVoters < ActiveRecord::Migration[5.1]
  def change
    add_column :voters, :nickname, :string
  end
end
