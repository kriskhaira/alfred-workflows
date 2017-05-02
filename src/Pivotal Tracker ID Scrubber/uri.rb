require 'uri'

text = ARGV[0]
uri = URI.parse URI.extract(text)[0]
id = uri.path.split('/')[3]

puts "##{id}"
