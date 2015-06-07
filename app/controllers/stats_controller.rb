class StatsController < ApplicationController
  def index
    @stats = Stat.all.where(url_id: params[:url_id])
    @url = Url.find(params[:url_id])
  end
  
  def create
    #actually creates a stat for the given url
    @url = Url.find(params[:url_id])
    @stat = Stat.new(url_id: @url.id)
    @stat.save
  end
  
  def stat_params
    params.require(:stat).permit(:url_id)
  end
end
