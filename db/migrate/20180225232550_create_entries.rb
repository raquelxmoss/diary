class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries, id: :uuid do |t|
      t.belongs_to :user
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end

