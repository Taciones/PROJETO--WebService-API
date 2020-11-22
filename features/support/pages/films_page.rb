class FilmResponsePage   
    
    
    def response
        $raw_response = HTTParty.get(Apiuri.base_uri)
    end

    def titles
        body =  $raw_response.body
        
        my_hash = JSON.parse body
        
        results = my_hash["results"]
      
        a = results[0]
        puts a
        puts a["title"]


        #below returns the titles in strings.
        # results.each do |title|
        #     @const_a = title.take(1)
        #     puts @const_a.class
        #     puts @const_a[0][1].class
            
            
        # end


        #@strings.join("\n")
        #File.open("./log/variables.txt", "w+") {|file| file.write(@strings)}



        # results0 = results.take(1)
        # results01 = results0.find {|item| item.include?("title")}
        # puts results01.class
        # puts results01["title"]


       
    end

    def has_title
        $raw_response.body
    end

    def save_titles
        body =  $raw_response.body
        my_hash = JSON.parse body
        results = my_hash["results"]
        a = results[0]
        b = results[1]
        c = results[2]
        d = results[3]
        e = results[4]
        f = results[5]



    end



end
