def bubble_sort a 
    for i in 0...a.count 
        for j in 0...a.count - 1
            if(a[j] < a[j+1])
                a[j] , a[j+1] = a[j+1], a[j]
            end
        end
    end
    return a 
end

arr = [1,4,5,2,7,23]
p bubble_sort arr 

# for i in 0...arr.count 
#     p i
# end

