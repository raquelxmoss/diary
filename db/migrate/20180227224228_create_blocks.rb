class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks, id: :uuid do |t|
      t.belongs_to :user, index: true
      t.integer :duration
      t.datetime :start_at
      t.datetime :end_at
      t.string :name

      t.timestamps
    end
  end
end
