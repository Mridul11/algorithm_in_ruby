def insertion_sort a 
   for i in 1...a.count
        key = a[i]
        j = i-1
        while(j > 0 and key < a[j])
            a[j+1] = a[j]
            j -= 1 
        end
        a[j+1] = key 
    end
    return a 
end

arr = [1,4,5,2,7,23]
p insertion_sort arr 