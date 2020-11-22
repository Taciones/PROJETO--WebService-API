class PlanetsResponsePage

    def keep_count
        body =  $raw_response.body
        my_hash = JSON.parse body
        @count =  my_hash["count"]

        
    end
    
    def send_value
        body =  $raw_response.body
        my_hash = JSON.parse body
        @count =  my_hash["count"]
        @number = rand @count..99999999
        return $send = HTTParty.get(Apiuri.base_uri+"/@number")
    end


end
