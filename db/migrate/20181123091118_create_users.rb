class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :icon_image
      t.integer :age, null: false
      t.string :sex
      t.boolean :admin, default: false, null: false
      t.boolean :elected, default: false, null: false
      t.timestamps
    end
  end
end
