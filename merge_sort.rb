class Merge
    def merge a1, a2 
        new_arr = []
        i , j = 0, 0 
        while( i < a1.count && j < a2.count )
            if(a1[i] < a2[j])
                new_arr << a1[i]
                i += 1
            else
                new_arr << a2[j]
                j += 1 
            end
        end

        while(i < a1.count)
            new_arr << a1[i]
            i += 1
        end
        
        while(j < a2.count)
            new_arr << a2[j]
            j += 1
        end

        return new_arr
    end

    def divide a 
        if(a.count <= 1)
            return a 
        else
            left = 0 
            right = a.count 
            mid = ((left + right ) / 2 ).to_i
            self.merge(self.divide(a.slice(left , mid)), self.divide(a.slice(mid, right)))
        end
    end
end

# ar1 = [1,3,5]
# ar2 = [2,4,6]

arr = [2,4,1,3,7,6,34,5]
m = Merge.new 
p m.divide arr