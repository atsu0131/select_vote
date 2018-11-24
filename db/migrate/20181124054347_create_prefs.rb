class CreatePrefs < ActiveRecord::Migration[5.1]
  def change
    create_table :prefs do |t|
      t.string :pref_name, null: false
      t.string :pref_info

      t.timestamps
    end
  end
end
