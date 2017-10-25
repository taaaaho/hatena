require 'nokogiri'
require 'open-uri'

url = '[ここにはてなブログのURLを指定]'

charset = nil
continue = true;
while continue do
	continue = false;
	html = open(url) do |f|
		charset = f.charset
		f.read
	end
	
	doc = Nokogiri::HTML.parse(html, nil, charset)
	doc.xpath('//a[@class="entry-title-link"]').each do | node |
		p node.get_attribute(:href)
		p node.inner_text
		# p node.inner_text + "," + node.get_attribute(:href)
	end
	
	doc.xpath('//span[@class="pager-next"]/a').each do | node |
		url = node.get_attribute(:href)
		continue = true;
	end
end

