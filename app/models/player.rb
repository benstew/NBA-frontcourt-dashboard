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

class Player < ActiveRecord::Base

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      # scoped
      all
    end
  end

  def self.average_post_touches
    average(:post_touches)
  end

  def self.average_points
    (average(:points)).round(2)
  end

  def self.average_minutes
    (average(:minutes)).round(2)
  end

  def self.average_time_of_possession
    (average(:time_of_possession)).round(2)
  end

  def self.average_seconds_per_touch
    (average(:seconds_per_touch)).round(2)
  end

  def self.average_dribbles_per_touch
    (average(:dribbles_per_touch)).round(2)
  end

  def self.average_points_per_touch
    (average(:points_per_touch)).round(3)
  end

  def self.average_elbow_touches
    (average(:elbow_touches)).round(2)
  end

  def self.average_post_touches
    (average(:post_touches)).round(2)
  end

  def self.average_paint_touches
    (average(:paint_touches)).round(2)
  end

  def self.average_points_per_elbow_touch
    (average(:points_per_elbow_touch)).round(3)
  end

  def self.average_points_per_post_touch
    (average(:points_per_post_touch)).round(3)
  end

  def self.average_points_per_paint_touch
    (average(:points_per_paint_touch)).round(3)
  end

end
