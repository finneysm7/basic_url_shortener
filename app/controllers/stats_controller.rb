class StatsController < ApplicationController
  def index
    @stats = Stat.all.where(url_id: params[:url_id])
    @url = Url.find(params[:url_id])
  end
end
