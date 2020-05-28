3.times {
    puts "Hello"
}

(0...3).each {
    p "I am Mridul!"
}

lst = (0...10).select(&:even?)
p lst 

lst.each do |n|
    p n 
    break if n > 4
end

hash = { bacon: 300, coconut: 200 }
hash.each { |key, val| p "#{key} costs #{val}" }