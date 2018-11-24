class CreatePoliticians < ActiveRecord::Migration[5.1]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :pref
      t.integer :age
      t.string :sex
      t.text :info
      t.boolean :active
      t.references :user

      t.timestamps
    end
  end
end
