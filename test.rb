# slicing a List or string and hash 
str = "I am Mridul Mishra!"
lst = ['mridul', 'mishra', 'vipul', 'mishra']
p str.slice(0...6)
p str[0,6]
p lst.slice(0...3)
p lst[0][0,3]

hash = {Name: "Mridul Mishra", age: "27"}
p hash.slice(:age)
p hash.slice(:Name)
p " demo slicing"

# stack implementation in ruby .
stack = []
stack << 12
stack << "Mridul"
stack.pop 
p stack 

# queue implementation in ruby 
q = Queue.new 
q << 12 
q << 13 
p q.pop 
p q

hash.each { |k,v| p " Key is #{k} and value is #{v}"}