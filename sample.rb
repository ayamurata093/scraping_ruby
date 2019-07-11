require 'open-uri'
require 'nokogiri'

charset = nil
html = open('https://qiita.com/') do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)


p doc.title