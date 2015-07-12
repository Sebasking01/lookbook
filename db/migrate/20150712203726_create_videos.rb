class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video_id
      t.string :description
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
