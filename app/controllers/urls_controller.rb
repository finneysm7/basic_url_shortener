class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end
  
  def new
    @url = Url.new
  end
  
  def create
    @url = Url.new(url_params)
    if @url.save
      @url.update_attributes(name: "http://localhost:3000/urls/#{@url.id}")
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
