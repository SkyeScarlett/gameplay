class ScenesController < ApplicationController
  def index
  end

  def show
    if scene.id != session[:scene_id] && !params[:force]
      redirect_to scene_path(session[:scene_id])
    end
    session[:scene_id] = scene.id
  end

  private

  def scene
    @scene ||= Scene.find(params[:id])
  end
end
