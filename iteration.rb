10.times {
    puts "Hello"
}

(0...10).each {
    p "I am Mridul!"
}

lst = (0...10).select(&:even?)

lst.each do |n|
    break if n > 4
    p n 
end

hash = { bacon: 300, coconut: 200 }

hash.each { |key, val| p "#{key} costs #{val}" }