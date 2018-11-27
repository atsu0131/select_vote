class AddZoneIdToPoliticians < ActiveRecord::Migration[5.1]
  def change
    add_reference :politicians, :zone, foreign_key: true
  end
end
