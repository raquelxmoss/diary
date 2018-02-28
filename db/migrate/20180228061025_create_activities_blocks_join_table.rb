class CreateActivitiesBlocksJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :activities_blocks, id: false do |t|
      t.uuid :activity_id, index: true
      t.uuid :block_id, index: true
    end
  end
end
