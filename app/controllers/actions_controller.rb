class ActionsController < ApplicationController

  def move
    if action.permitted?(character_stats)
      action.gained_stats.each_pair do |stat, value|
        character_stats[stat] = (character_stats[stat] || 0) + value
      end
      session[:scene_id] = action.target_scene_id
      session[:character_stats] = character_stats
      redirect_to scene_path(action.target_scene_id), notice: notice_message
    else
      redirect_to scene_path(action.scene_id), alert: "Действие недоступно"
    end
  end

  private

  def action
    @action = Action.find(params[:id])
  end

 def notice_message
    return if action.gained_stats.empty?
    "Получено: #{action.gained_stats.map {|stat, value| "#{stat} (#{value})"}.join(', ')}"
  end
end