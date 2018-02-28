class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities, id: :uuid do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
