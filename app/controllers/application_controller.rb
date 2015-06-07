class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :create_stat
  
  def create_stat(url)
    #actually creates a stat for the given url
    @stat = Stat.new(stat_params)
    @stat.save
  end
  
  def stat_params
    params.require(:stat)
  end
end
