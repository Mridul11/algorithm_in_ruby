# slicing a List or string and hash 
str = "I am Mridul Mishra!"
lst = ['mridul', 'mishra', 'vipul', 'mishra']
p str.slice(0...3)
p str[0,6]
p lst.slice(0...3)
p lst[0][0,3]

hash = {Name: "Mridul Mishra", age: "27"}
p hash.slice(:age)
p hash.slice(:Name)