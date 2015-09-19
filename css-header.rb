require 'nokogiri'

html_path = "test.html"
page = Nokogiri::HTML(open(html_path))


page.css('link[rel=stylesheet]').each do |link_element|
	css_path = link_element['href']
	css = File.read(css_path)
	style_elements = page.css('style')
	if style_elements.length > 0
		style_elements[0].content = style_elements[0].content + css
	else
		page.css('head')[0].add_child("<style>" +  css +  "</style>")
	end
	link_element.remove
end
puts page