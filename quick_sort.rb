class Quicksort

    def partition(a, low, high)
        i = low -1 
        pivot = a[high]

        for j in low...high
            if (a[j] < pivot )
                i = i + 1 
                a[i], a[j] = a[j], a[i]
            end
        end
        a[i+1], a[high] = a[high], a[i+1]
        return i+1 
    end

    def quick(arr , low, high)
        if low < high
            pi = self.partition(arr, low, high)

            self.quick(arr,low, pi-1)
            self.quick(arr,pi+1, high)
        end
    end
end

qck = Quicksort.new 
arr = [10, 7, 8, 9, 1, 5] 

n = arr.count 
qck.quick(arr, 0, n-1)

p "Sorted array is: "

for i in 0...n 
    p arr[i]
end


