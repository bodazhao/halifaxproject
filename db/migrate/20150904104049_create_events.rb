class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string      :title
      t.date        :date_start
      t.date        :date_end
      t.integer     :time_start_hour
      t.string      :time_start_minute
      t.integer     :time_end_hour
      t.string      :time_end_minute
      
      t.text        :content
      t.references  :user, index: true, foreign_key: true
      t.string      :picture

      t.timestamps null: false
    end
    add_index :events, [:user_id, :created_at]
  end
end
