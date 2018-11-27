class AddPrefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :pref, foreign_key: true
  end
end
