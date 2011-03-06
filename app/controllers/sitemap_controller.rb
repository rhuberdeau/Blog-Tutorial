class SitemapController < ApplicationController
  layout nil


  def index
    @articles = Article.all
    headers["Content-Type"] = "text/xml"
    respond_to do |format|
      format.xml { render :layout => false }
    end
  end
end
