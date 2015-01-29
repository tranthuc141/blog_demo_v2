class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :body
      t.string :picture
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :entries, :users
  end
end
