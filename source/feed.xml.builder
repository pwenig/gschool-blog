xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
<<<<<<< HEAD
  xml.title "Paul Wenig"
=======
  xml.title "Paul Wenig's Blog"
>>>>>>> ed1088a49ff7e2a1d72854476e8f726362fc076c
  xml.subtitle "Blog subtitle"
  xml.id "http://paulwenig.com/"
  xml.link "href" => "http://paulwenig.com/"
  xml.link "href" => "http://paulwenig.com/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "Paul Wenig" }

  blog.articles[0..5].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Paul Wenig" }
      xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
