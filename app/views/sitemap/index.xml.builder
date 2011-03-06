xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.url do
    xml.loc "http://www.yoursite.com"
    xml.priority 1.0
  end  
  for a in @articles
    xml.url do
      xml.loc article_url(a)
      xml.changefreq("weekly")
      xml.priority("0.7")
      if a.updated_at.nil?
        xml.lastmod(a.created_at.strftime("%Y-%m-%d"))
      else
      xml.lastmod(a.updated_at.strftime("%Y-%m-%d"))
      end
    end
  end
end
