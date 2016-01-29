class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.integer :games_played
      t.integer :wins
      t.integer :losses
      t.float :minutes
      t.float :points
      t.float :touches
      t.float :time_of_possession
      t.float :seconds_per_touch
      t.float :dribbles_per_touch
      t.float :points_per_touch
      t.string :position
      t.float :frontcourt_touches
      t.float :elbow_touches
      t.float :post_touches
      t.float :paint_touches
      t.float :points_per_elbow_touch
      t.float :points_per_post_touch
      t.float :points_per_paint_touch
      t.float :points_per_fc_touch

      t.timestamps null: false
    end
  end
end
