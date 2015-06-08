class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end
  
  def new
    @url = Url.new
  end
  
  def create
    if Rails.env.development?
      host = "http://localhost:3000"
    else
      host = "productionhost"
    end
    @url = Url.new(url_params)
    if @url.save
      @url.update_attributes(name: "#{host}/urls/#{@url.id}")
      redirect_to urls_url
    else
      flash.now[:errors] = @url.errors.full_messages
      render :new
    end
  end
  
  def show
    @url = Url.find(params[:id])
    redirect_to @url.link
  end
  
  private
  def url_params
    params.require(:url).permit(:link, :name)
  end
end
