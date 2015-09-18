require 'nokogiri'

html_path = "test.html"
page = Nokogiri::HTML(open(html_path))

page.css('link[rel=stylesheet]').each do |link_element|
	css_path = link_element['href']
	css = File.read(css_path)
	page.css('head')[0].add_child("<style>" +  css +  "</style>")
	link_element.remove
end
puts page