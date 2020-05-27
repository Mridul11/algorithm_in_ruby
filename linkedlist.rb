class Node
    attr_accessor :next_node , :value 
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList
    def initialize(value)
        @head = Node.new value         
    end

    def add val 
        current = @head 
        while !current.next_node.nil?
            current  = current.next_node
        end
        current.next_node = Node.new val
    end

    def shift val 
        current = Node.new val  
        while true 
            if @head == nil 
                @head = current
                break  
            else
                tmp = @head 
                @head = current
                @head.next_node = tmp 
                break
            end
        end
    end

    def unshift
        current = @head 
        if current != nil 
            tmp_next = current.next_node 
            @head = tmp_next
        end
    end

    def show
        current = @head 
        while(current != nil)
            p current.value
            # p current
            # p current.next_node.nil?
            current = current.next_node 
        end
    end
end

ll = LinkedList.new -1

5.times do |i| 
    ll.add i 
end

# ll.show 
ll.shift 121
ll.show 
p "========================"
ll.unshift
ll.show