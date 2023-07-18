class ApplicationController < ActionController::Base

  def character_stats
     @character_stats ||= session[:character_stats] || {}
  end

  helper_method :character_stats
end