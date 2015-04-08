require "nokogiri"

filenames = Dir["film_pages/*"]
movies = []
 filenames.each do |filename|
    #filename = "film_pages/"

    f= open(filename)
    doc= Nokogiri::HTML(f)
    f.close
    # puts filename

    name = doc.xpath("//*[contains(@class, 'base entry')]/h1") [0].content
    summary = doc.xpath("//*[contains(@class, 'capsule')]").text.strip#.gsub("\r","\n")
    duration_str = doc.xpath("//*[contains(@class, 'details')]/li[starts-with(.,'Run Time')]").text
    if not duration_str.empty?
    duration = Integer(duration_str[/[0-9]+/])
    else
    duration = -1
    end

    movies << {:name => name, :summary => summary, :duration => duration}
    # puts name + "\n\n"
    # director =  doc.xpath("//*[contains(@class, 'base entry')]/h4[contains(.,'Director')]")
    # if not director.empty?
    #     director.slice! " Director: "
    #     director.strip!
    #     puts director
    # end

    # puts "\n"
    # producer =  doc.xpath("//*[contains(@class, 'credits')]/li[contains(.,'Producer')]")
    # if not producer.empty?
    #     puts producer
    # end


    # if not doc.xpath("//h3[text()='Producer']").empty?
    #     films_produced = doc.xpath("//h3[text()='Producer']/following-sibling::ul[1]/li")
    #     films_produced.each do |li|
    #     film_title = li.children[0].content
    #     film_link = li.children[0].attributes["href"].content
    #     # puts "Producer: " + film_title, film_link + "\n\n"
    #     puts film_link
    #     end
    # end

    # # puts "\n"

    # if not doc.xpath("//h3[text()='Screenwriter']").empty?
    #     films_written = doc.xpath("//h3[text()='Screenwriter']/following-sibling::ul[1]/li")
    #     films_written.each do |li|
    #     film_title = li.children[0].content
    #     film_link = li.children[0].attributes["href"].content
    #     # puts "Screenwriter: " + film_title, film_link + "\n\n"
    #     puts film_link
    #     end
    # end
 end
 puts movies