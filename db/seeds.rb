# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pictures = [
      { :url => "http://upload.wikimedia.org/wikipedia/commons/f/f1/Ruby_logo.png", :caption => "Ruby: Designed for developer happiness." },
      { :url => "http://upload.wikimedia.org/wikipedia/commons/1/16/Ruby_on_Rails-logo.png", :caption => "Rails: Agile web development." },
      { :url => "http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png", :caption => "HTML5: Powerful structure and presentation." }
    ]

pictures.each do |pic|
  p = Picture.new
  p.url = pic[:url]
  p.caption = pic[:caption]
  p.save
end
