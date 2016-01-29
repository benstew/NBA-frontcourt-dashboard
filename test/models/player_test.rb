# == Schema Information
#
# Table name: players
#
#  id                     :integer          not null, primary key
#  name                   :string
#  team                   :string
#  games_played           :integer
#  wins                   :integer
#  losses                 :integer
#  minutes                :float
#  points                 :float
#  touches                :float
#  time_of_possession     :float
#  seconds_per_touch      :float
#  dribbles_per_touch     :float
#  points_per_touch       :float
#  position               :string
#  frontcourt_touches     :float
#  elbow_touches          :float
#  post_touches           :float
#  paint_touches          :float
#  points_per_elbow_touch :float
#  points_per_post_touch  :float
#  points_per_paint_touch :float
#  points_per_fc_touch    :float
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
