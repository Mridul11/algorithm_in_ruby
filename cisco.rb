def find_missing lst  
    n = lst.count 
    total = (n+1) * (n+2) / 2 
    s = lst.sum 
    return total - s 
end

lst = [1,2,3,5]
p find_missing(lst)

def rev(s)
    s = s.split(" ")
    p s.reverse.join(' ')
end

s = "This is me !"
rev(s)