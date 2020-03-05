#write your code here
def translate(word)
    rta = []
    arrayWord = word.split("")
    numberOfWords = word.split(" ").length 
    memorySentences = word.split(" ")
    if numberOfWords == 1
        while arrayWord[0] != "a" && arrayWord[0] != "e" && arrayWord[0] != "i" && arrayWord[0] != "o" && arrayWord[0] != "u"
        
            arrayWord[0], arrayWord[arrayWord.length] = arrayWord[arrayWord.length], arrayWord[0]
            word = arrayWord.join("")
            arrayWord = word.split("")
        end
        if arrayWord[0] == "u"
            arrayWord[0], arrayWord[arrayWord.length] = arrayWord[arrayWord.length], arrayWord[0]
            word = arrayWord.join("")
            arrayWord = word.split("")
        end
        return arrayWord.join("") + "ay"
    else
        for i in 0..numberOfWords-1
            arrayWord = memorySentences[i].split("")
            while arrayWord[0] != "a" && arrayWord[0] != "e" && arrayWord[0] != "i" && arrayWord[0] != "o" && arrayWord[0] != "u"
        
                arrayWord[0], arrayWord[arrayWord.length] = arrayWord[arrayWord.length], arrayWord[0]
                word = arrayWord.join("")
                arrayWord = word.split("")
            end
            if arrayWord[0] == "u"
                arrayWord[0], arrayWord[arrayWord.length] = arrayWord[arrayWord.length], arrayWord[0]
                word = arrayWord.join("")
                arrayWord = word.split("")
            end
            rta = rta.push(arrayWord.join("") + "ay")
        end
        return rta.join(" ") 
    end 
end