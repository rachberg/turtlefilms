# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "nokogiri"

filenames = Dir["data/director_pages/*"]
filenames.each do |filename|

	f= open(filename)
	doc= Nokogiri::HTML(f)
	f.close
	# puts filename

	name = doc.xpath("//h1") [1].content
	Person.create(:name => name)
	puts name + "\n\n"

	if not doc.xpath("//h3[text()='Director']").empty?

		films_directed = doc.xpath("//h3[text()='Director']/following-sibling::ul[1]/li")
		films_directed.each do |li|
			film_title = li.children[0].content
			film_link = li.children[0].attributes["href"].content
			# puts "Director: " + film_title, film_link + "\n\n"
			#puts film_link
		end
	end

	# puts "\n"

	if not doc.xpath("//h3[text()='Producer']").empty?
		films_produced = doc.xpath("//h3[text()='Producer']/following-sibling::ul[1]/li")
		films_produced.each do |li|
			film_title = li.children[0].content
			film_link = li.children[0].attributes["href"].content
			# puts "Producer: " + film_title, film_link + "\n\n"
			#puts film_link
		end
	end

	# puts "\n"

	if not doc.xpath("//h3[text()='Screenwriter']").empty?
		films_written = doc.xpath("//h3[text()='Screenwriter']/following-sibling::ul[1]/li")
		films_written.each do |li|
			film_title = li.children[0].content
			film_link = li.children[0].attributes["href"].content
			# puts "Screenwriter: " + film_title, film_link + "\n\n"
			#puts film_link
		end
	end
end
