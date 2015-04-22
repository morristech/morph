class StaticController < ApplicationController
  def index
  end

  def search
    @q = params[:q]
    @scrapers = Scraper.search(@q)
    @owners = User.search(@q)
    @type = params[:type]
  end
end
