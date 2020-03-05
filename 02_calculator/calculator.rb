#write your code here
def add(a,b)
    if a.to_f.nan? == true
        a = 0
    end
    if b.to_f.nan? == true
        b = 0
    end
    puts a
    return a+b
end

def subtract(a,b)
    
    if a.to_f.nan? == true
        a = 0
    end
    if b.to_f.nan? == true
        b = 0
    end
    return a-b
end

def sum(a)
    
    if a[0].nil? == true
        a[0] = 0
    end
    if a[1].nil? == true
        a[1] = 0
    end
    return a.reduce(0){|sum, num| sum + num }
end

def multiply(a)
    return a.reduce(:*)
end

def power(a,b)
    return a**b
end

def factorial(a)
    rta = a
    while a > 1
        rta = rta * (a - 1)
        a = a - 1
    end

    return rta
end