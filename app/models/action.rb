class Action < ApplicationRecord
  belongs_to :scene, class_name: 'Scene'
  belongs_to :target_scene, class_name: 'Scene', foreign_key: :target_scene_id

  def permitted?(character_stats)
    !required_stats.map do |stat, value|
      character_stats[stat].to_i >= value
    end.include?(false)
  end
end