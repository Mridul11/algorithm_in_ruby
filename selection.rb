def selection_sort a 
    for i in 0...a.count
        min_index = i 
        for j in i+1...a.count
            if(a[j] < a[min_index])
               min_index = j 
            end
        end
        a[i], a[min_index] = a[min_index], a[i]
    end
    return a 
end

arr = [1,4,5,2,7,23]
p selection_sort arr 