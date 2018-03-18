class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries, id: :uuid do |t|
      t.references :user, type: :uuid, foreign_key: true
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end

