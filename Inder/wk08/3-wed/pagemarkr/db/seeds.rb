Bookmark.destroy_all
["https://www.codingblocks.net/podcast/clean-code-writing-meaningful-names/",   
"https://www.google.com", 
"https://guides.rubyonrails.org"].each do |url|
  b = Bookmark.new
  b.url = url
  b.title = MetaInspector.new(b.url).best_title
  b.save
end



