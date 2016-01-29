json.array!(@players) do |player|
  json.extract! player, :id, :id, :name, :team, :games_played, :wins, :losses, :minutes, :points, :touches, :time_of_possession, :seconds_per_touch, :dribbles_per_touch, :points_per_touch, :position, :frontcourt_touches, :elbow_touches, :post_touches, :paint_touches, :points_per_elbow_touch, :points_per_post_touch, :points_per_paint_touch, :points_per_fc_touch
  json.url player_url(player, format: :json)
end
