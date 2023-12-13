class CreateConversationReplicas < ActiveRecord::Migration[7.0]
  def change
    create_table :conversation_replicas do |t|
      t.integer :timing_in_seconds
      t.text :content
      t.text :tag_cloud
      t.string :talker_id

      t.timestamps
    end
  end
end
