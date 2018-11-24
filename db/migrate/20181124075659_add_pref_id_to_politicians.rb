class AddPrefIdToPoliticians < ActiveRecord::Migration[5.1]
  def change
    add_reference :politicians, :pref, index: true
  end
end
