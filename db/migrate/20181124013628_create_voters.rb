class CreateVoters < ActiveRecord::Migration[5.1]
  def change
    create_table :voters do |t|
      t.references :user
      t.references :selection

      t.timestamps
    end
  end
end
