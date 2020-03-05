class Book
# write your code here
    attr_accessor :title
    def title=(newTitle)
        
        rta = newTitle.capitalize
        rta =  rta.split(" ").map do |string| 

            if string != "a" && string != "in" && string != "the" && string != "of" && string != "and" && string != "an"
               string.capitalize
            else
                string
            end 
            
        end
        @title = rta.join(" ")
    end
end
