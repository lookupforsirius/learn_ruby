#write your code here
def echo(sentence)
    return sentence
end

def shout(sentence)
    return sentence.upcase
end

def repeat(sentence,number = 2)
    rta = ""
    for i in 1..number
        rta = rta + sentence + " " 
    end
    return rta.strip
end

def start_of_word(word,position)
    rta = word.chars
    word = ""
    for i in 0..position-1
        word = word + rta[i]
    end
    return word
end

def first_word(sentence)
    rta = sentence.split(" ")
    return rta[0]
end

def titleize(title)
    rta = title.capitalize
    rta =  rta.split(" ").map do |string| 

    if string != "and" && string != "over" && string != "the"
       string.capitalize
    else
        string
    end 
    
    end
    return rta.join(" ")

end